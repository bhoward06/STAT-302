# Author: Howard, Date: Mar 7 2022, Purpose: Calculate linear regression

# Set working directory to the file path
setwd("/Users/brenayhoward/Downloads")

# Read the CSV file in R
data <- read.csv("national-history.csv", header = TRUE)

# Use column "death" and "hospitalizedIncrease" for understanding relationship between patients hospitalized and patientsdying
relation <- lm(data$death~data$hospitalizedIncrease)

summary(relation)
# p value is less than 0.05 there is a relation b/w "death" and "hospitalizedIncrease"
# sequence matters
# Regression looks at relationship, Also predict the future relationships
# Correlation also looks at relationship

# How to plot the relationship
options(scipen=100)
plot(data$death, data$hospitalizedIncrease, col = "blue", main = "Deaths & Patients Hospitalized Regression",abline(lm(data$hospitalizedIncrease~data$death)),cex= 1.3, pch= 16, xlab ="Deaths", ylab = "Patients Hospitalized")

# Next month, if I see there are 1000 deaths and 900 patients had been hospitalized 