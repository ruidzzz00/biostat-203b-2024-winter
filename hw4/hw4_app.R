library(shiny)
library(bigrquery)
library(ggplot2)
library(dplyr)
library(tidyr)
library(DT)

mimic_icu_cohort <- readRDS("~/mimiciv_shiny/mimic_icu_cohort.rds")

satoken <- "biostat-203b-2024-winter-313290ce47a6.json"
# BigQuery authentication using service account
bq_auth(path = satoken)

# connect to the BigQuery database `biostat-203b-2024-winter.mimic4_v2_2`
con_bq <- dbConnect(
  bigrquery::bigquery(),
  project = "biostat-203b-2024-winter",
  dataset = "mimic4_v2_2",
  billing = "biostat-203b-2024-winter"
)

adt_tble <- tbl(con_bq, "transfers")
lab_tble <- tbl(con_bq, "labevents")
pcd_tble <- tbl(con_bq, "procedures_icd")
dcd_tble <- tbl(con_bq, "diagnoses_icd")
did_tble <- tbl(con_bq, "d_icd_diagnoses")

# ... rest of the UI code
ui <- fluidPage(
  titlePanel("ICU Cohort Data Exploration"),
  navbarPage("ICU Data", id = "nav",
             tabPanel("Patient characteristics", fluid = TRUE,
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("variable", "Variable of interest",
                                      choices = c("Last care unit", "Lab Events"
                                        , "Race", "Gender", "Age", "Language", 
                                        "First Care Unit")),
                          checkboxInput("outliers", "Remove outliers in 
                                        IQR method for measurements?", FALSE)
                        ),
                        mainPanel(
                          plotOutput("variablePlot")
                        )
                      )
             ),
             tabPanel("Patients' ADT and ICU stay information",
                      sidebarLayout(
                        sidebarPanel(
                          selectInput("patientID", "Select a Patient", choices = unique(mimic_icu_cohort$subject_id))
                          #numericInput("patient_id", "Patient ID", 1)
                        ),
                        mainPanel(
                          plotOutput("ADTICUplot")
                        )
                      )
             )
  )
)

# Define server logic to summarize and view selected dataset
server <- function(input, output, session) {
  
  # Reactive expression for the dataset
  mimic_icu_cohort <- reactive({
    readRDS("mimiciv_shiny/mimic_icu_cohort.rds")
  })
  
  sid <- reactive({
    input$patientID
  })
  
  # Update the patientID selectInput choices
  observe({
    updateSelectInput(session, "patientID",
                      choices = mimic_icu_cohort()$subject_id)
  })
  
  # Render plot based on selected variable
  output$variablePlot <- renderPlot({
    if (input$variable == "Last care unit") {
      data <- mimic_icu_cohort()
      ggplot(data, aes_string(x = "last_careunit")) +
        geom_bar() +
        coord_flip() +
        labs(y = "Count", x = "Last care unit") +
        theme_minimal()
    } else if (input$variable == "Lab Events") {
      data <- mimic_icu_cohort() %>%
        select(sodium, potassium, glucose, creatinine, chloride, 
               bicarbonate) %>%
        pivot_longer(cols = everything(), names_to = "lab_event", 
                     values_to = "value") %>%
        mutate(lab_event = as.factor(lab_event))
      
      # IQR method for removing outliers
      if(input$outliers) {
        iqr_values <- data %>% group_by(lab_event) %>%
          summarize(
            Q_1 = quantile(value, 0.25, na.rm = TRUE),
            Q_3 = quantile(value, 0.75, na.rm = TRUE)
          ) %>%
          mutate(IQR = Q_3 - Q_1, lower = Q_1 - 1.5 * IQR, 
                 upper = Q_3 + 1.5 * IQR)
        
        data <- data %>% left_join(iqr_values, by = "lab_event") %>%
          filter(value >= lower & value <= upper) %>%
          select(-Q_1, -Q_3, -IQR, -lower, -upper)
      }
      
      ggplot(data, aes(x = value, y = lab_event)) +
        geom_boxplot() +
        theme_minimal()
    }
    else if (input$variable == "Race") {
      data <- mimic_icu_cohort()
      ggplot(data, aes_string(x = "race")) +
        geom_bar() +
        coord_flip() +
        labs (y = "Count", x = "Race") +
        theme_minimal()
    }
    else if (input$variable == "Age") {
      data <- mimic_icu_cohort()
      ggplot(data, aes_string(x = "anchor_age")) +
        geom_histogram(binwidth = 5) +
        labs(y = "Count", x = "Age") +
        theme_minimal()
    }
    else if (input$variable == "First Care Unit") {
      data <- mimic_icu_cohort()
      ggplot(data, aes_string(x = "first_careunit")) +
        geom_bar() +
        coord_flip() +
        labs(y = "Count", x = "First care unit") +
        theme_minimal()
    }
    else if (input$variable == "Gender") {
      data <- mimic_icu_cohort()
      ggplot(data, aes_string(x = "gender")) +
        geom_bar() +
        labs(y = "Count", x = "age") +
        theme_minimal()
    }
    else if (input$variable == "Language") {
      data <- mimic_icu_cohort()
      ggplot(data, aes_string(x = "language")) +
        geom_bar() +
        labs(y = "Count", x = "Language") +
        theme_minimal()
    }
  })
  
  observe({
    selected_patient_id <- input$patientID
    if(is.null(input$patientID) || input$patientID == ""){
      return()
    }
    selected_patient_id <- as.integer(input$patientID)
    
    sid_patients <- mimic_icu_cohort() %>%
      filter(subject_id == selected_patient_id) %>%
      collect()
    
    sid_adt <- adt_tble %>%
      filter(subject_id == selected_patient_id) %>%
      select(subject_id, careunit, intime, outtime) %>%
      collect()
    
    sid_lab <- lab_tble %>%
      filter(subject_id == selected_patient_id) %>%
      select(subject_id, charttime, storetime) %>%
      collect()
    
    sid_pcd <- pcd_tble %>%
      filter(subject_id == selected_patient_id) %>%
      select(subject_id, chartdate, icd_code, icd_version) %>%
      left_join(did_tble, by = c("icd_code" = "icd_code", 
                                 "icd_version" = "icd_version")) %>%
      select(subject_id, chartdate, long_title) %>%
      collect()
    
    sid_did <- dcd_tble %>%
      filter(subject_id == selected_patient_id) %>%
      select(subject_id, icd_code, icd_version) %>%
      left_join(did_tble, by = c("icd_code" = "icd_code", 
                                 "icd_version" = "icd_version")) %>%
      select(subject_id, long_title) %>%
      collect()
    
    adt_nm <- 
      sid_adt[complete.cases(sid_adt[c('intime', 'outtime', 'careunit')]), ]
    
    title <- paste("Patient", selected_patient_id, ",", 
                   str_to_lower(sid_patients$gender[1]), 
                   ",", sid_patients$anchor_age[1], "years old,", 
                   sid_patients$race[1])
    
    output$ADTICUplot <- renderPlot({
      patient_data <- mimic_icu_cohort() %>%
        filter(subject_id == selected_patient_id) %>%
        collect()
      
      ggplot() +
        geom_point(data = sid_pcd, aes(x = as.POSIXct(chartdate), 
                y = "Procedure", shape = factor(long_title)), 
                na.rm = TRUE) +
        geom_point(data = sid_lab, aes(x = charttime, y = "Lab"), 
                shape = 3) +
        geom_segment(data = adt_nm, aes(x = intime, xend = outtime, y = "ADT", 
                yend = "ADT", color = careunit, linewidth = 
                str_detect(careunit, "ICU|CCU"))) +
        scale_shape_manual(values = c(16, 17, 18, 19, 20, 21, 22, 23, 
                                      24, 25)) +
        scale_color_discrete(name = "Care Unit") +
        scale_y_discrete(limits = c("Procedure", "Lab", "ADT")) +
        guides(linewidth = "none") +
        theme_bw(base_size = 10) +
        theme(legend.position = "bottom", legend.box = "vertical", 
              legend.title = element_text(size=9)) +
        labs(x = "Calendar Time", y = "", title = title, 
             subtitle = paste(paste(tolower(sid_did$long_title[1:3]), 
          collapse = "\n")), color = "Care Unit", shape = "Procedure")
    })
  })
}

# Run the application
shinyApp(ui = ui, server = server)