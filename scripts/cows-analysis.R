library(tidyverse)

cows <- read_csv("data/cows.csv")

cows_long <- cows %>% 
  gather(measurement, weight, -id)
