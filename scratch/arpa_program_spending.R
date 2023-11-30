library(tidyverse)
library(readxl)
library(here)

download.file("https://urbanorg.box.com/shared/static/e0rwm3k05uj1q2ynaalav3fsz9zg76dt.xlsx",
              destfile = here("scratch", 
                              "cct_arpa_spend.xlsx"),
              mode = "wb")


cct_arpa_spend <- read_xlsx("scratch/cct_arpa_spend.xlsx")

rec_dash_data <- read_csv(here("data/intermediate_data",
                                                   "recovery_dashboard_data.csv"))

unique_project_cct <- cct_arpa_spend %>% pull(`Project Name`) %>% unique() %>% tolower()
unique_project_dash <- rec_dash_data %>% pull(program) %>% unique() %>% tolower()

common_proj <- intersect(unique_project_cct, unique_project_dash)
diff_proj <- setdiff(unique_project_cct, unique_project_dash)
