#### Preamble ####
# Purpose: Clean the data
# Author: Juliana Zhu
# Date: 26th September 2024
# Contact: juliana.zhu@mail.utoronto.ca
# License: MIT
# Pre-requisites: none
# Other information needed: 

#### Workspace setup ####
library(tidyverse)


#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_homeless_death_by_cause.csv")

raw_data <- rename(raw_data, c(Year.of))

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  select(Year.of.death, Cause_of_death, Age_group, Gender, Count) |>
  mutate(
    count = as.numeric(Count)
  ) |>
  drop_na()


write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")

















