mimic_icu_cohort <- readRDS("~/mimiciv_shiny/mimic_icu_cohort.rds")

server <- function(input, output) {
  
  # Generate plot based on selected variable
  output$variablePlot <- renderPlot({
    if (input$variable == "Last care unit") {
      # Bar plot for last care unit with flipped coordinates
      ggplot(mimic_icu_cohort, aes(x = fct_infreq(mimic_icu_cohort$last_careunit))) +
        geom_bar() +
        coord_flip() +
        labs(x = NULL, y = "Count") +
        theme_minimal()
    } else {
      # Prepare lab events data
      if ("lab_events" %in% names(mimic_icu_cohort)) {
        lab_data <- mimic_icu_cohort %>%
          select(starts_with("lab_")) %>%
          pivot_longer(cols = everything(), names_to = "lab_event", values_to = "value")
        
        # Remove outliers if checkbox is checked
        if(input$outliers) {
          lab_data <- lab_data %>%
            group_by(lab_event) %>%
            filter(between(value, quantile(value, 0.25) - 1.5 * IQR(value), 
                           quantile(value, 0.75) + 1.5 * IQR(value)))
        }
        
        # Boxplot for lab events
        ggplot(lab_data, aes(x = lab_event, y = value)) +
          geom_boxplot() +
          theme(axis.text.x = element_text(angle = 90, hjust = 1))
      } else {
        # If no lab_events data, return an empty plot
        ggplot() + 
          labs(title = "No lab events data available")
      }
    }
  })
  
  # Output for patient details table
  # This assumes there's an input element with id `patient_id`
  output$patient_details <- renderDataTable({
    req(input$patient_id)  # Make sure a patient ID is selected
    mimic_icu_cohort %>% 
      filter(subject_id == input$patient_id) %>%
      DT::datatable()
  })
  
}

# Create Shiny app ----
shinyApp(ui, server)
