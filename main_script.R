pacman::p_load(here, tidyverse)

data()
print("Hello, Graph Classmates")

lakers
names(lakers)

lakers %>% 
  filter(team == "SAS" & type == "jump") %>% 
  group_by(player, type) %>% 
  summarise(total_points = max(points, na.rm = TRUE))

