library(tidyverse)

cows <- read_csv("data/cows.csv")

cows_long <- cows %>% 
  gather(measurement, weight, -id)

cows_long_filtered <- cows_long %>% 
  filter(measurement == "weight1")

cows_long_filtered %>% 
  mutate(weight_sqrt = sqrt(weight)) %>% 
  write_csv("data/cows_weight_sqrt.csv")
