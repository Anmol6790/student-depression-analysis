#Level 5: Creating New Insights

data <- data %>%
  mutate(Development_Status = case_when(
    GDP < 1000 ~ "Low Income",
    GDP >= 1000 & GDP < 4000 ~ "Lower Middle Income",
    GDP >= 4000 & GDP < 12000 ~ "Upper Middle Income",
    GDP >= 12000 ~ "High Income",
    TRUE ~ "Unknown"
  ))
# Check sample output
head(data %>% select(Country, Year, GDP, Development_Status), 10)


data = data %>%
mutate(Health_Spending_Per_Capita = `percentage expenditure` / Population)
# Check sample output
head(data %>% select(Country, Year, `percentage expenditure`, Population,
                     Health_Spending_Per_Capita), 10)
