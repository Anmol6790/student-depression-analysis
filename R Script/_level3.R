#=====================================
# Level 3: Grouping & Summarization
#=====================================

library(dplyr)
#==============================================
# Q1: Average life expectancy for each country
#=============================================

avg_life_exp_country <- data %>%
  group_by(Country) %>%
  summarise(Average_Life_Expectancy = mean(`Life expectancy`, na.rm = TRUE)) %>%
  arrange(desc(Average_Life_Expectancy))

# Show result
print(avg_life_exp_country)

#============================================================
# Q2: Average schooling in developed vs. developing countries
#============================================================

avg_schooling_status <- data %>%
  group_by(Status) %>%
  summarise(Average_Schooling = mean(Schooling, na.rm = TRUE))

# Show result
print(avg_schooling_status)

#=================================================
# Q3: Year with highest average life expectancy
#================================================

avg_life_exp_year <- data %>%
  group_by(Year) %>%
  summarise(Average_Life_Expectancy = mean(`Life expectancy`, na.rm = TRUE)) %>%
  arrange(desc(Average_Life_Expectancy))

# Show the top year
print(head(avg_life_exp_year, 1))

