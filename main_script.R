pacman::p_load(here, tidyverse)

data()
print("Hello, Graph Classmates")

lakers
names(lakers)

jumpers_sas <- lakers %>% 
  filter(team == "SAS" & type == "jump") %>% 
  group_by(player, type) %>% 
  summarise(total_points = max(points, na.rm = TRUE)) %>% 
  ungroup()

write_csv(jumpers_sas, here("jumpers_sas.csv"))


print("Hello, My R Peeps")

