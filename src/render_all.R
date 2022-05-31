
library(tidyverse)

source("src/render_one.R")

waste_data_long <- read_rds("data/msw-generation-and-composition-by-income-long.rds")

country_names <- waste_data_long %>% 
  select(country_name) %>% 
  unique() %>% 
  pull()

for (name in country_names) {
  render_one(country = name)
}

