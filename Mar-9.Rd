# Author: Howard, Date: Mar, 9 2022, Purpose: To test regression analysis

setwd("/Users/brenayhoward/Downloads") 

data <- read.csv("national-history.csv", header = TRUE)

# Below we created a model called relation
relation <- lm(data$death~data$hospitalizedIncrease + data$onVentilatorCumulative + data$positiveIncrease,data)

summary(relation)

# What will happen to the number of deaths, if the hospitalized patients are say 1000 for next month

# Below we create a data frame called A
A <- data.frame(x=1000)
result <- predict(relation, A)