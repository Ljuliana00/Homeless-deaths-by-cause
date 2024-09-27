#### Preamble ####
# Purpose: Clean the data
# Author: 
# Date: 27th September 2024
# Contact: 
# License: MIT
# Pre-requisites: none
# Other information needed: No

#### Workspace setup ####
library(tidyverse)


#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_homeless_death_by_cause.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  select(year_of_death, cause_of_death, age_group, gender, count) |>
  mutate(
    count = as.numeric(count)
  ) |>
  drop_na()


write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")



