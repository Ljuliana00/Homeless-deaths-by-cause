#### Preamble ####
# Purpose: Downloads and saves the data from Toronto Opendata
# Author: Juliana Zhu
# Date: 26th September 2024
# Contact: juliana.zhu@mail.utoronto.ca
# License: MIT
# Pre-requisites: none


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(12138)

simulation <- tibble(
  #simulate the year of death
  Year.of.death = sample(2017:2023, size = 100, replace = TRUE),
  
  #simulate the causes of deaths
  Cause_of_death = sample(c("Accident", "Cancer", "Cardiovascular Disease", 
                            "COVID-19", "Drug toxicity", "Drug Toxicity", "Homicide", 
                            "Infection", "Other", "Pneumonia", "Suicide", "Unknown"), 
                          size = 100, replace = TRUE),
  
  #simulate the age groups
  Age_group = sample(c("20-39", "40-59", "60+", "Unknown"), size = 100, replace = TRUE),
  
  #simulate the genders
  Gender = sample(c("Male", "Female"), size = 100, replace = TRUE),
  
#Count represents the number of deaths by cause for the corresponding category, which is a count of occurrences
#using Poisson distribution to simulate the count of deaths
  Count = rpois(100, lambda = 2) #Assume 2 deaths per year due to that cause
)

head(simulation)
