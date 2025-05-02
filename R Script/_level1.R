# Load Required Libraries
library(readr)
library(dplyr)

ibrary(readr)
Life_Expectancy_Data <- read_csv("C:/Users/anmol/OneDrive/Desktop/Life Expectancy Data.csv")
View(Life_Expectancy_Data)

#==================
# Check Structure
#=================
str(data)

#====================
# Summary Statistics
#====================
summary(data)

#=====================
# Dataset Dimensions
#=====================
dim(data)

#=====================
# Find Missing Values
#=====================
sum(is.na(data))  # Total missing values
colSums(is.na(data))  # Column-wise missing values

#===============================
# Clean Data (Remove NA rows)
#===============================
data <- na.omit(data)




