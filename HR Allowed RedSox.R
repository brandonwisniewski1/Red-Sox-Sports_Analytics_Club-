library(tidyverse)
library(ggplot2)
library(Lahman)

#Make pitching data pitching set from Red Sox

redsox <- Pitching %>% 
  filter(yearID == 2004) %>% 
  filter(teamID == "BOS")



#Plotting
boxplot <- ggplot(redsox, 
                  aes(x = teamID, 
                      y = HR)) +
  geom_violin(color = "navy",
              fill = "red") +
  
  labs(title = "Distribution of RedSox HomeRuns Allowed in 2004", 
       subtitle = "RedSox 2004 Title Sesaon",
       caption = "Image by NCSU SAC | Data from Lahman Package", 
       x = "", 
       y = "Home Runs Allowed") +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5),
        plot.caption = element_text(hjust = 0.5))

boxplot
 
