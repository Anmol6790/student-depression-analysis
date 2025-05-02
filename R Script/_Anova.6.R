# =======================================
# Libraries
# =======================================
library(ggplot2)
library(readr)
library(dplyr)

# Read the dataset ONCE
df <- read_csv("C:/Users/anmol/OneDrive/Desktop/Life Expectancy Data.csv")

# Always check column names (optional but useful)
# colnames(df)

#===========================================
# Scatter Plots
#=======================================

#=======================================
# Q1. Scatter Plot: GDP vs Life Expectancy
#=======================================

# Clean data
df_scatter1 <- df %>%
  select(GDP, `Life expectancy`) %>%
  na.omit()

# Create scatter plot
ggplot(df_scatter1, aes(x = GDP, y = `Life expectancy`)) +
  geom_point(color = "steelblue", alpha = 0.6) +
  labs(title = "GDP vs Life Expectancy",
       x = "GDP",
       y = "Life Expectancy") +
  theme_minimal()

#======================================================
# Q2. Scatter Plot: Adult Mortality vs Life Expectancy
#======================================================

# Clean data
df_scatter2 <- df %>%
  select(`Adult Mortality`, `Life expectancy`) %>%
  na.omit()

# Create scatter plot
ggplot(df_scatter2, aes(x = `Adult Mortality`, y = `Life expectancy`)) +
  geom_point(color = "tomato", alpha = 0.6) +
  labs(title = "Adult Mortality vs Life Expectancy",
       x = "Adult Mortality",
       y = "Life Expectancy") +
  theme_minimal()

#===================================
# Boxplots
#=======================================

#=======================================
# Q3. Boxplot: Life Expectancy by Status
#=======================================

# Clean data
df_boxplot1 <- df %>%
  select(`Life expectancy`, Status) %>%
  na.omit()

# Create boxplot
ggplot(df_boxplot1, aes(x = Status, y = `Life expectancy`, fill = Status)) +
  geom_boxplot() +
  labs(title = "Life Expectancy: Developed vs Developing",
       x = "Status",
       y = "Life Expectancy") +
  theme_minimal() +
  scale_fill_manual(values = c("#00BFC4", "#F8766D"))

#=======================================
# Q4. Boxplot: BMI Distribution by Status
#=======================================

# Clean data
df_boxplot2 <- df %>%
  select(BMI, Status) %>%
  na.omit()

# Create boxplot
ggplot(df_boxplot2, aes(x = Status, y = BMI, fill = Status)) +
  geom_boxplot() +
  labs(title = "BMI Distribution: Developed vs Developing",
       x = "Status",
       y = "BMI") +
  theme_minimal() +
  scale_fill_manual(values = c("#00BFC4", "#F8766D"))

