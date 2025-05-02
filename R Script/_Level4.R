# Level 4 :Ranking & Comparison
#==============================================================
# Q1: Rank countries by average life expectancy (high to low)
#=============================================================

country_rank_life <- data %>%
  group_by(Country) %>%
  summarise(Average_Life_Expectancy = mean(`Life expectancy`, na.rm = TRUE)) %>%
  arrange(desc(Average_Life_Expectancy))

# Show top 10 ranked countries
head(country_rank_life, 10)

#======================================================
# Q2: Find top 5 countries with highest infant deaths
#=====================================================

top_infant_deaths <- data %>%
  group_by(Country) %>%
  summarise(Total_Infant_Deaths = sum(`infant deaths`, na.rm = TRUE)) %>%
  arrange(desc(Total_Infant_Deaths))

# Show top 5 countries
head(top_infant_deaths, 5)

#=============================================================
# Q3: Which year had the highest total alcohol consumption?
#===========================================================

yearly_alcohol <- data %>%
  group_by(Year) %>%
  summarise(Total_Alcohol = sum(Alcohol, na.rm = TRUE)) %>%
  arrange(desc(Total_Alcohol))

# Show the top year
head(yearly_alcohol, 1)


