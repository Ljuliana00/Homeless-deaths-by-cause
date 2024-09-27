#### Preamble ####
# Purpose: Downloads and saves the data from Toronto Opendata
# Author: 
# Date: 26th September 2024
# Contact: 
# License: MIT
# Pre-requisites: none
# Other information needed: install packages "opendatatoronto", "dplyr"


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(readr)

#### Download data ####
# get package
package <- show_package("a7ae08f3-c512-4a88-bb3c-ab40eca50c5e")
package

# get all resources for this package
resources <- list_package_resources("a7ae08f3-c512-4a88-bb3c-ab40eca50c5e")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==4) %>% get_resource()
data


#### Save data ####
write_csv(data, "data/raw_data/raw_homeless_death_by_cause.csv") 


         
