library(tidyverse)

cows <- read_csv("data/cows.csv")

cows_long <- cows %>% 
  gather(measurement, weight, -id)

cows_summarised_weight <- cows_long %>%
  group_by(measurement) %>%
  summarise(mean_weight = mean(weight), sd_weight = sd(weight))

cows_long_filtered <- cows_long %>% 
  filter(measurement == "weight1")

cows_long_filtered %>% 
  mutate(weight_sqrt = sqrt(weight)) %>% 
  write_csv("data/cows_weight_sqrt.csv")

ggplot(cows_long, aes(measurement, weight)) +
  geom_point() +
  geom_label(label=rownames(cows_long))

# Here is a comment that I wrote from github
