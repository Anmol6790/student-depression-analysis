#Correlation 
#============================================================================
#Q1. Correlation between Life Expectancy and GDP per capita
#============================================================================

# Load the data
data <- read.csv("C:/Users/anmol/OneDrive/Desktop/Life Expectancy Data.csv")

# Correlation between Life Expectancy and GDP
cor.test(data$Life.expectancy, data$GDP, method = "pearson")

# Scatter plot
plot(data$GDP, data$Life.expectancy, 
     main = "Life Expectancy vs GDP",
     xlab = "GDP per capita", 
     ylab = "Life Expectancy (years)",
     col = ifelse(data$Status == "Developed", "blue", "red"))
legend("bottomright", legend = c("Developed", "Developing"), 
       col = c("blue", "red"), pch = 1)

#==============================================================
#Q2.Correlation between Adult Mortality and Alcohol Consumption
#==============================================================

# Correlation between Adult Mortality and Alcohol
cor.test(data$Adult.Mortality, data$Alcohol, method = "pearson")

# Scatter plot with regression line
plot(data$Alcohol, data$Adult.Mortality,
     main = "Adult Mortality vs Alcohol Consumption",
     xlab = "Alcohol Consumption (liters per capita)", 
     ylab = "Adult Mortality (per 1000 population)")
abline(lm(Adult.Mortality ~ Alcohol, data = data), col = "red")

#================================================
#Q3.Correlation between BMI and Life Expectancy
#===============================================

# Correlation between BMI and Life Expectancy
cor.test(data$BMI, data$Life.expectancy, method = "pearson")

# Boxplot by Status
boxplot(BMI ~ Status, data = data,
        main = "BMI Distribution by Country Status",
        xlab = "Country Status",
        ylab = "BMI",
        col = c("lightblue", "lightgreen"))


#====================================================
#Q4.Correlation between Schooling and Life Expectancy
#====================================================

# Correlation between Schooling and Life Expectancy
cor.test(data$Schooling, data$Life.expectancy, method = "pearson")

# Scatter plot with color by Status
library(ggplot2)
ggplot(data, aes(x = Schooling, y = Life.expectancy, color = Status)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Life Expectancy vs Schooling",
       x = "Average Years of Schooling",
       y = "Life Expectancy (years)") +
  theme_minimal()























