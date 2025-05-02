#=====================================================================
# Q1. Predict Life expectancy based on GDP (Simple Linear Regression)
#====================================================================
# Load the data
data <- read.csv("Life Expectancy Data.csv")

# Check the column names to find the correct names
colnames(data)

# Now use the correct column names (likely "Life.expectancy" should be "Life.expectancy" without space, or you might need backticks)

# Simple Linear Regression: Predict Life expectancy based on GDP
model1 <- lm(`Life expectancy` ~ GDP, data = data)

# Summary of the model
cat("Summary of Simple Linear Regression (Life expectancy vs GDP):\n")
summary(model1)

# Plot GDP vs Life expectancy with regression line
plot(data$GDP, data$`Life expectancy`,
     col = "blue",
     pch = 16,
     main = "Life Expectancy vs GDP",
     xlab = "GDP",
     ylab = "Life Expectancy")

# Add regression line
abline(model1, col = "red", lwd = 2)

#====================================================================================
#Q2.Predict Life expectancy based on Alcohol consumption (Simple Linear Regression)
#====================================================================================
# Load the dataset
data <- read.csv("Life Expectancy Data.csv")

# Check the column names
colnames(data)

# Simple Linear Regression: Predict Life Expectancy based on Alcohol
model_alcohol <- lm(`Life expectancy` ~ Alcohol, data = data)

# Summary of the model
cat("Summary of Simple Linear Regression (Life expectancy vs Alcohol):\n")
summary(model_alcohol)

# Scatter plot: Life Expectancy vs Alcohol consumption
plot(data$Alcohol, data$`Life expectancy`,
     col = "skyblue",
     pch = 16,
     main = "Life Expectancy vs Alcohol Consumption",
     xlab = "Alcohol Consumption (litres per capita)",
     ylab = "Life Expectancy")

# Add regression line
abline(model_alcohol, col = "red", lwd = 2)



#===============================================================================================
#Q3.Predict Life expectancy based on GDP, BMI, and Adult Mortality (Multiple Linear Regression) 
#================================================================================================

# Load the dataset
data <- read.csv("Life Expectancy Data.csv")

# Check column names
colnames(data)

# Multiple Linear Regression
model_mlr <- lm(`Life expectancy` ~ GDP + BMI + `Adult Mortality`, data = data)

# Summary
cat("Summary of Multiple Linear Regression (Life Expectancy vs GDP, BMI, Adult Mortality):\n")
summary(model_mlr)

# Scatter plots for each predictor vs Life Expectancy
par(mfrow = c(1, 3))  # 1 row, 3 columns layout

# Scatter plot 1: GDP vs Life Expectancy
plot(data$GDP, data$`Life expectancy`,
     col = "blue",
     pch = 16,
     main = "Life Expectancy vs GDP",
     xlab = "GDP",
     ylab = "Life Expectancy")
abline(lm(`Life expectancy` ~ GDP, data = data), col = "red", lwd = 2)

# Scatter plot 2: BMI vs Life Expectancy
plot(data$BMI, data$`Life expectancy`,
     col = "green",
     pch = 16,
     main = "Life Expectancy vs BMI",
     xlab = "BMI",
     ylab = "Life Expectancy")
abline(lm(`Life expectancy` ~ BMI, data = data), col = "red", lwd = 2)

# Scatter plot 3: Adult Mortality vs Life Expectancy
plot(data$`Adult Mortality`, data$`Life expectancy`,
     col = "purple",
     pch = 16,
     main = "Life Expectancy vs Adult Mortality",
     xlab = "Adult Mortality",
     ylab = "Life Expectancy")
abline(lm(`Life expectancy` ~ `Adult Mortality`, data = data), col = "red", lwd = 2)

# Reset plot layout
par(mfrow = c(1, 1))

#=======================================================================
#Q4. predict Life Expectancy based on GDP using Polynomial Regression?
#=======================================================================

# Load the dataset
data <- read.csv("Life Expectancy Data.csv")

# Polynomial Regression Model (Degree 2: Quadratic)
model_poly <- lm(`Life expectancy` ~ GDP + I(GDP^2), data = data)

# Summary of the model
cat("Summary of Polynomial Regression (Life expectancy vs GDP):\n")
summary(model_poly)

# Scatter plot of GDP vs Life Expectancy
plot(data$GDP, data$`Life expectancy`,
     col = "lightblue",
     pch = 16,
     main = "Polynomial Regression: Life Expectancy vs GDP",
     xlab = "GDP",
     ylab = "Life Expectancy")

# Add the polynomial regression curve
x_seq <- seq(min(data$GDP, na.rm=TRUE), max(data$GDP, na.rm=TRUE), length=100)
y_pred <- predict(model_poly, newdata = data.frame(GDP = x_seq))
lines(x_seq, y_pred, col = "red", lwd = 2)





