#================================================
# Q1: Countries with life expectancy above 75
#================================================

high_life_exp <- data %>%
  filter(`Life expectancy` > 75) %>%
  distinct(Country)

print(high_life_exp)

#===================================================
# Q2: Countries with adult mortality more than 300
#==================================================

high_adult_mortality <- data %>%
  filter(`Adult Mortality` > 300) %>%
  distinct(Country)

print(high_adult_mortality)

#============================================================
# Q3: Developing countries with life expectancy less than 60
#=============================================================

low_life_exp_dev <- data %>%
  filter(Status == "Developing", `Life expectancy` < 60) %>%
  distinct(Country)


print(low_life_exp_dev)

