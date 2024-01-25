Last login: Wed Jan 17 17:22:00 on console

The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
RDMBP:~ zhangruidong$ cd 212a-lecture
RDMBP:212a-lecture zhangruidong$ git pull origin master

fatal: 无法找到远程引用 master
RDMBP:212a-lecture zhangruidong$ 
RDMBP:212a-lecture zhangruidong$ git pull origin main
remote: Enumerating objects: 176, done.
remote: Counting objects: 100% (37/37), done.
remote: Compressing objects: 100% (20/20), done.
remote: Total 176 (delta 21), reused 30 (delta 16), pack-reused 139
接收对象中: 100% (176/176), 24.50 MiB | 6.99 MiB/s, 完成.
处理 delta 中: 100% (72/72), 完成 6 个本地对象.
来自 https://github.com/ucla-biostat-212a/2024winter
 * branch            main       -> FETCH_HEAD
   0ccc897..1864ab8  main       -> origin/main
更新 0ccc897..1864ab8
Fast-forward
 _posts/2024-01-06-week1-day2.md         |     8 +-
 _posts/2024-01-16-week2.md              |    19 +
 hw/hw1/hw1.html                         |    41 +-
 hw/hw1/hw1.qmd                          |    20 +-
 slides/01-intro/DP-KF.png               |   Bin 0 -> 2148717 bytes
 slides/01-intro/RNASeqCounts.png        |   Bin 0 -> 137389 bytes
 slides/01-intro/RNASeqRF.png            |   Bin 0 -> 241135 bytes
 slides/01-intro/RNASequencing.png       |   Bin 0 -> 203480 bytes
 slides/01-intro/genomic_classifier.png  |   Bin 0 -> 1638661 bytes
 slides/01-intro/schema.png              |   Bin 0 -> 2609737 bytes
 slides/02-statlearn/conditional-x-1.png |   Bin 0 -> 101912 bytes
 slides/02-statlearn/double-decent.png   |   Bin 0 -> 158691 bytes
 slides/02-statlearn/double-decent.webp  |   Bin 0 -> 34792 bytes
 slides/03-linreg/conditional-x-1.png    |   Bin 0 -> 101912 bytes
 slides/03-linreg/figure_3.11.png        |   Bin 0 -> 319645 bytes
 slides/03-linreg/joint-dist.png         |   Bin 0 -> 97927 bytes
 slides/03-linreg/linreg.html            |  7318 ++++++++--------------
 slides/03-linreg/linreg.qmd             |   198 +-
 slides/03-linreg/probreview.html        |     4 +-
 slides/data/Advertising.csv             |   201 +
 slides/data/Auto.csv                    |   398 ++
 slides/data/Auto.data                   |   398 ++
 slides/data/Bikeshare.csv               |  8646 ++++++++++++++++++++++++++
 slides/data/Boston.csv                  |   507 ++
 slides/data/BrainCancer.csv             |    89 +
 slides/data/Caravan.csv                 |  5823 +++++++++++++++++
 slides/data/Carseats.csv                |   401 ++
 slides/data/Ch12Ex13.csv                |  1000 +++
 slides/data/College.csv                 |   778 +++
 slides/data/Credit.csv                  |   401 ++
 slides/data/Default.csv                 | 10001 ++++++++++++++++++++++++++++++
 slides/data/Fund.csv                    |    51 +
 slides/data/Heart.csv                   |   304 +
 slides/data/Hitters.csv                 |   323 +
 slides/data/Income1.csv                 |    31 +
 slides/data/Income2.csv                 |    31 +
 slides/data/NCI60_data.csv              |    65 +
 slides/data/NCI60_labs.csv              |    65 +
 slides/data/NYSE.csv                    |  6052 ++++++++++++++++++
 slides/data/OJ.csv                      |  1071 ++++
 slides/data/Portfolio.csv               |   101 +
 slides/data/Publication.csv             |   245 +
 slides/data/Smarket.csv                 |  1251 ++++
 slides/data/Wage.csv                    |  3001 +++++++++
 slides/data/Weekly.csv                  |  1090 ++++
 syllabus/syllabus.md                    |    19 +-
 46 files changed, 45237 insertions(+), 4714 deletions(-)
 create mode 100644 _posts/2024-01-16-week2.md
 create mode 100644 slides/01-intro/DP-KF.png
 create mode 100644 slides/01-intro/RNASeqCounts.png
 create mode 100644 slides/01-intro/RNASeqRF.png
 create mode 100644 slides/01-intro/RNASequencing.png
 create mode 100644 slides/01-intro/genomic_classifier.png
 create mode 100644 slides/01-intro/schema.png
 create mode 100644 slides/02-statlearn/conditional-x-1.png
 create mode 100644 slides/02-statlearn/double-decent.png
 create mode 100644 slides/02-statlearn/double-decent.webp
 create mode 100644 slides/03-linreg/conditional-x-1.png
 create mode 100644 slides/03-linreg/figure_3.11.png
 create mode 100644 slides/03-linreg/joint-dist.png
 create mode 100644 slides/data/Advertising.csv
 create mode 100644 slides/data/Auto.csv
 create mode 100644 slides/data/Auto.data
 create mode 100644 slides/data/Bikeshare.csv
 create mode 100644 slides/data/Boston.csv
 create mode 100644 slides/data/BrainCancer.csv
 create mode 100644 slides/data/Caravan.csv
 create mode 100644 slides/data/Carseats.csv
 create mode 100644 slides/data/Ch12Ex13.csv
 create mode 100644 slides/data/College.csv
 create mode 100644 slides/data/Credit.csv
 create mode 100644 slides/data/Default.csv
 create mode 100644 slides/data/Fund.csv
 create mode 100644 slides/data/Heart.csv
 create mode 100644 slides/data/Hitters.csv
 create mode 100644 slides/data/Income1.csv
 create mode 100644 slides/data/Income2.csv
 create mode 100644 slides/data/NCI60_data.csv
 create mode 100644 slides/data/NCI60_labs.csv
 create mode 100644 slides/data/NYSE.csv
 create mode 100644 slides/data/OJ.csv
 create mode 100644 slides/data/Portfolio.csv
 create mode 100644 slides/data/Publication.csv
 create mode 100644 slides/data/Smarket.csv
 create mode 100644 slides/data/Wage.csv
 create mode 100644 slides/data/Weekly.csv
RDMBP:212a-lecture zhangruidong$ cd ~/mimic/hosp
RDMBP:hosp zhangruidong$ zcat < admissions.csv.gz | head
subject_id,hadm_id,admittime,dischtime,deathtime,admission_type,admit_provider_id,admission_location,discharge_location,insurance,language,marital_status,race,edregtime,edouttime,hospital_expire_flag
10000032,22595853,2180-05-06 22:23:00,2180-05-07 17:15:00,,URGENT,P874LG,TRANSFER FROM HOSPITAL,HOME,Other,ENGLISH,WIDOWED,WHITE,2180-05-06 19:17:00,2180-05-06 23:30:00,0
10000032,22841357,2180-06-26 18:27:00,2180-06-27 18:49:00,,EW EMER.,P09Q6Y,EMERGENCY ROOM,HOME,Medicaid,ENGLISH,WIDOWED,WHITE,2180-06-26 15:54:00,2180-06-26 21:31:00,0
10000032,25742920,2180-08-05 23:44:00,2180-08-07 17:50:00,,EW EMER.,P60CC5,EMERGENCY ROOM,HOSPICE,Medicaid,ENGLISH,WIDOWED,WHITE,2180-08-05 20:58:00,2180-08-06 01:44:00,0
10000032,29079034,2180-07-23 12:35:00,2180-07-25 17:55:00,,EW EMER.,P30KEH,EMERGENCY ROOM,HOME,Medicaid,ENGLISH,WIDOWED,WHITE,2180-07-23 05:54:00,2180-07-23 14:00:00,0
10000068,25022803,2160-03-03 23:16:00,2160-03-04 06:26:00,,EU OBSERVATION,P51VDL,EMERGENCY ROOM,,Other,ENGLISH,SINGLE,WHITE,2160-03-03 21:55:00,2160-03-04 06:26:00,0
10000084,23052089,2160-11-21 01:56:00,2160-11-25 14:52:00,,EW EMER.,P6957U,WALK-IN/SELF REFERRAL,HOME HEALTH CARE,Medicare,ENGLISH,MARRIED,WHITE,2160-11-20 20:36:00,2160-11-21 03:20:00,0
10000084,29888819,2160-12-28 05:11:00,2160-12-28 16:07:00,,EU OBSERVATION,P63AD6,PHYSICIAN REFERRAL,,Medicare,ENGLISH,MARRIED,WHITE,2160-12-27 18:32:00,2160-12-28 16:07:00,0
10000108,27250926,2163-09-27 23:17:00,2163-09-28 09:04:00,,EU OBSERVATION,P38XXV,EMERGENCY ROOM,,Other,ENGLISH,SINGLE,WHITE,2163-09-27 16:18:00,2163-09-28 09:04:00,0
10000117,22927623,2181-11-15 02:05:00,2181-11-15 14:52:00,,EU OBSERVATION,P2358X,EMERGENCY ROOM,,Other,ENGLISH,DIVORCED,WHITE,2181-11-14 21:51:00,2181-11-15 09:57:00,0
RDMBP:hosp zhangruidong$ zcat < patients.csv.gz | tail -n +2 | cut -d',' -f1 | uniq | wc -l
  299712
RDMBP:hosp zhangruidong$ cd ~
RDMBP:~ zhangruidong$ wget -nc http://www.gutenberg.org/cache/epub/42671/pg42671.txt
-bash: wget: command not found
RDMBP:~ zhangruidong$ sudo apt-get update
Password:
Sorry, try again.
Password:
sudo: apt-get: command not found
RDMBP:~ zhangruidong$ sudo apt-get install wget
sudo: apt-get: command not found
RDMBP:~ zhangruidong$ $ sudo dnf install git-all
-bash: $: command not found
RDMBP:~ zhangruidong$ git --version
git version 2.35.1
RDMBP:~ zhangruidong$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
==> Checking for `sudo` access (which may request your password)...
==> This script will install:
/opt/homebrew/bin/brew
/opt/homebrew/share/doc/homebrew
/opt/homebrew/share/man/man1/brew.1
/opt/homebrew/share/zsh/site-functions/_brew
/opt/homebrew/etc/bash_completion.d/brew
/opt/homebrew
==> The Xcode Command Line Tools will be installed.

Press RETURN/ENTER to continue or any other key to abort:
==> /usr/bin/sudo /usr/sbin/chown -R zhangruidong:admin /opt/homebrew
==> Searching online for the Command Line Tools
==> /usr/bin/sudo /usr/bin/touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
==> Installing Command Line Tools for Xcode-15.1
==> /usr/bin/sudo /usr/sbin/softwareupdate -i Command\ Line\ Tools\ for\ Xcode-15.1
Software Update Tool

Finding available software

Downloading Command Line Tools for Xcode
Downloaded Command Line Tools for Xcode
Installing Command Line Tools for Xcode
Done with Command Line Tools for Xcode
Done.
==> /usr/bin/sudo /usr/bin/xcode-select --switch /Library/Developer/CommandLineTools
==> /usr/bin/sudo /bin/rm -f /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
==> Downloading and installing Homebrew...
remote: Enumerating objects: 783, done.
remote: Counting objects: 100% (782/782), done.
remote: Compressing objects: 100% (408/408), done.
remote: Total 783 (delta 375), reused 729 (delta 334), pack-reused 1
Receiving objects: 100% (783/783), 973.71 KiB | 4.25 MiB/s, done.
Resolving deltas: 100% (375/375), completed with 15 local objects.
From https://github.com/Homebrew/brew
   3821fab24..e9587a5ec  master     -> origin/master
 * [new tag]             4.2.3      -> 4.2.3
 * [new tag]             4.2.4      -> 4.2.4
HEAD is now at e9587a5ec Merge pull request #16493 from Homebrew/sponsors-maintainers-man-completions
==> Downloading https://ghcr.io/v2/homebrew/portable-ruby/portable-ruby/blobs/sha256:d783cbeb6e6ef0d71c0b442317b54554370decd6fac66bf2d4938c07a63f67be
################################################################################################### 100.0%
==> Pouring portable-ruby-3.1.4.arm64_big_sur.bottle.tar.gz
Installing from the API is now the default behaviour!
You can save space and time by running:
  brew untap homebrew/core
==> Installation successful!

==> Homebrew has enabled anonymous aggregate formulae and cask analytics.
Read the analytics documentation (and how to opt-out) here:
  https://docs.brew.sh/Analytics
No analytics data has been sent yet (nor will any be during this install run).

==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations

==> Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/zhangruidong/.bash_profile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh

RDMBP:~ zhangruidong$ brew install wget
==> Downloading https://ghcr.io/v2/homebrew/core/wget/manifests/1.21.4
################################################################################################### 100.0%
==> Fetching dependencies for wget: libunistring, gettext, libidn2, ca-certificates and openssl@3
==> Downloading https://ghcr.io/v2/homebrew/core/libunistring/manifests/1.1
################################################################################################### 100.0%
==> Fetching libunistring
==> Downloading https://ghcr.io/v2/homebrew/core/libunistring/blobs/sha256:c78e7b0af88bef155ad7f12d63ad60f
################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gettext/manifests/0.22.4
################################################################################################### 100.0%
==> Fetching gettext
==> Downloading https://ghcr.io/v2/homebrew/core/gettext/blobs/sha256:c652190aa716f3ca57678562de9cef6380d1
################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/manifests/2.3.4_1-1
################################################################################################### 100.0%
==> Fetching libidn2
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/blobs/sha256:b044c66cc0f1feea87d229f3f4016c5ff29a
################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/ca-certificates/manifests/2023-12-12
################################################################################################### 100.0%
==> Fetching ca-certificates
==> Downloading https://ghcr.io/v2/homebrew/core/ca-certificates/blobs/sha256:5c99ffd0861f01adc19cab495027
################################################################################################### 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/3/manifests/3.2.0_1
################################################################################################### 100.0%
==> Fetching openssl@3
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/3/blobs/sha256:4bf12955cbd2ef13c0ee3fd19c6d4b3f4b
################################################################################################### 100.0%
==> Fetching wget
==> Downloading https://ghcr.io/v2/homebrew/core/wget/blobs/sha256:c7b3fe54045aa9dc0d4da59adc8776a781766b9
################################################################################################### 100.0%
==> Installing dependencies for wget: libunistring, gettext, libidn2, ca-certificates and openssl@3
==> Installing wget dependency: libunistring
==> Downloading https://ghcr.io/v2/homebrew/core/libunistring/manifests/1.1
Already downloaded: /Users/zhangruidong/Library/Caches/Homebrew/downloads/a34801f1ad5800ba51b2b3951d82a913ccf0641982f86b02df2f0aa182535055--libunistring-1.1.bottle_manifest.json
==> Pouring libunistring--1.1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libunistring/1.1: 56 files, 5.0MB
==> Installing wget dependency: gettext
==> Downloading https://ghcr.io/v2/homebrew/core/gettext/manifests/0.22.4
Already downloaded: /Users/zhangruidong/Library/Caches/Homebrew/downloads/3ceb9457127eaa7378dd80ed256098ffb391e2350069becb25cfe2a14f0b7d6d--gettext-0.22.4.bottle_manifest.json
==> Pouring gettext--0.22.4.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/gettext/0.22.4: 2,042 files, 24.3MB
==> Installing wget dependency: libidn2
==> Downloading https://ghcr.io/v2/homebrew/core/libidn2/manifests/2.3.4_1-1
Already downloaded: /Users/zhangruidong/Library/Caches/Homebrew/downloads/03ad193177f4e7d05ee2ed19a455028cb5fbf7ea1a812d88f18f5e9e8b4a4d43--libidn2-2.3.4_1-1.bottle_manifest.json
==> Pouring libidn2--2.3.4_1.arm64_ventura.bottle.1.tar.gz
🍺  /opt/homebrew/Cellar/libidn2/2.3.4_1: 79 files, 1MB
==> Installing wget dependency: ca-certificates
==> Downloading https://ghcr.io/v2/homebrew/core/ca-certificates/manifests/2023-12-12
Already downloaded: /Users/zhangruidong/Library/Caches/Homebrew/downloads/13aa86e429e05d02a76005d1881eaf625091a5ac4dc7d7674c706d12ba48796a--ca-certificates-2023-12-12.bottle_manifest.json
==> Pouring ca-certificates--2023-12-12.all.bottle.tar.gz
==> Regenerating CA certificate bundle from keychain, this may take a while...
🍺  /opt/homebrew/Cellar/ca-certificates/2023-12-12: 3 files, 226.7KB
==> Installing wget dependency: openssl@3
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/3/manifests/3.2.0_1
Already downloaded: /Users/zhangruidong/Library/Caches/Homebrew/downloads/8e5415de690efd057f74775ab4b808fed9a50bf29c34ee9cb52118d189ef73a9--openssl@3-3.2.0_1.bottle_manifest.json
==> Pouring openssl@3--3.2.0_1.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/openssl@3/3.2.0_1: 6,805 files, 31.9MB
==> Installing wget
==> Pouring wget--1.21.4.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/wget/1.21.4: 91 files, 4.4MB
==> Running `brew cleanup wget`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Upgrading 1 dependent of upgraded formulae:
Disable this behaviour by setting HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
git 2.35.1 -> 2.43.0
==> Downloading https://ghcr.io/v2/homebrew/core/git/manifests/2.43.0
################################################################################################### 100.0%
==> Fetching dependencies for git: pcre2
==> Downloading https://ghcr.io/v2/homebrew/core/pcre2/manifests/10.42
################################################################################################### 100.0%
==> Fetching pcre2
==> Downloading https://ghcr.io/v2/homebrew/core/pcre2/blobs/sha256:8423a338c590ab1a6f265b39a9d1a67ab1361a
################################################################################################### 100.0%
==> Fetching git
==> Downloading https://ghcr.io/v2/homebrew/core/git/blobs/sha256:4f8cf2bf2832df15c4af81ba93cc95c4ebef439f
################################################################################################### 100.0%
==> Upgrading git
  2.35.1 -> 2.43.0 

==> Installing dependencies for git: pcre2
==> Installing git dependency: pcre2
==> Downloading https://ghcr.io/v2/homebrew/core/pcre2/manifests/10.42
Already downloaded: /Users/zhangruidong/Library/Caches/Homebrew/downloads/6a53794fcaabc5cc5e05b19c02ca9c4c5f2cb9a4d65a5790a6841146465b040f--pcre2-10.42.bottle_manifest.json
==> Pouring pcre2--10.42.arm64_ventura.bottle.tar.gz
🍺  /opt/homebrew/Cellar/pcre2/10.42: 230 files, 6.2MB
==> Installing git
==> Pouring git--2.43.0.arm64_ventura.bottle.tar.gz
==> Caveats
The Tcl/Tk GUIs (e.g. gitk, git-gui) are now in the `git-gui` formula.
Subversion interoperability (git-svn) is now in the `git-svn` formula.

Bash completion has been installed to:
  /opt/homebrew/etc/bash_completion.d
==> Summary
🍺  /opt/homebrew/Cellar/git/2.43.0: 1,638 files, 50.5MB
==> Running `brew cleanup git`...
Removing: /opt/homebrew/Cellar/git/2.35.1... (1,523 files, 43.5MB)
Removing: /Users/zhangruidong/Library/Caches/Homebrew/git--2.35.1... (15.2MB)
==> Checking for dependents of upgraded formulae...
==> No broken dependents found!
==> Caveats
==> git
The Tcl/Tk GUIs (e.g. gitk, git-gui) are now in the `git-gui` formula.
Subversion interoperability (git-svn) is now in the `git-svn` formula.

Bash completion has been installed to:
  /opt/homebrew/etc/bash_completion.d
RDMBP:~ zhangruidong$ wget -nc http://www.gutenberg.org/cache/epub/42671/pg42671.txt
--2024-01-18 02:53:19--  http://www.gutenberg.org/cache/epub/42671/pg42671.txt
正在解析主机 www.gutenberg.org (www.gutenberg.org)... 152.19.134.47
正在连接 www.gutenberg.org (www.gutenberg.org)|152.19.134.47|:80... 已连接。
已发出 HTTP 请求，正在等待回应... 302 Found
位置：https://www.gutenberg.org/cache/epub/42671/pg42671.txt [跟随至新的 URL]
--2024-01-18 02:53:19--  https://www.gutenberg.org/cache/epub/42671/pg42671.txt
正在连接 www.gutenberg.org (www.gutenberg.org)|152.19.134.47|:443... 已连接。
已发出 HTTP 请求，正在等待回应... 200 OK
长度：725284 (708K) [text/plain]
正在保存至: “pg42671.txt”

pg42671.txt                100%[======================================>] 708.29K  1.61MB/s  用时 0.4s    

2024-01-18 02:53:20 (1.61 MB/s) - 已保存 “pg42671.txt” [725284/725284])

RDMBP:~ zhangruidong$ for char in Elizabeth Jane Lydia Darcy
> do
>   echo $char:
>   # some bash commands here
> done
Elizabeth:
Jane:
Lydia:
Darcy:
RDMBP:~ zhangruidong$ 
RDMBP:~ zhangruidong$ wget -nc http://www.gutenberg.org/cache/epub/42671/pg42671.txt
文件 “pg42671.txt” 已经存在；不获取。

RDMBP:~ zhangruidong$ for char in Elizabeth Jane Lydia Darcy
> do
>   echo $char:
>   # some bash commands here
> done
Elizabeth:
Jane:
Lydia:
Darcy:
RDMBP:~ zhangruidong$ for char in Elizabeth Jane Lydia Darcy
> do
>   echo "$char:"
>   grep -o -i "$char" pg42671.txt | wc -l
> done
Elizabeth:
     634
Jane:
     293
Lydia:
     171
Darcy:
     418
RDMBP:~ zhangruidong$ vi middle.sh

#!/bin/sh
# Select lines from the middle of a file.
# Usage: bash middle.sh filename end_line num_lines
head -n "$2" "$1" | tail -n "$3"

~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         
~                                                                                                         

