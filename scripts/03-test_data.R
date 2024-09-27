#### Preamble ####
# Purpose: test the data
# Author:
# Date: 26th September 2024
# Contact: 
# License: MIT
# Pre-requisites: none
# Other information needed: no


#### Workspace setup ####
library(tidyverse)
library(readr)

#### Test data ####
test_data <- read_csv("data/analysis_data/analysis_data.csv")

# Test for negative numbers
test_data$count |> min() < 0

# Test for NAs
all(is.na(test_data$count))
all(is.na(test_data$year_of_death))
all(is.na(test_data$cause_of_death))
all(is.na(test_data$age_group))
all(is.na(test_data$gender))
