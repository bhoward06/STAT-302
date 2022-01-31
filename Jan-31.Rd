# Author: Howard, Date: Jan 31 2022, Purpose: Analyze National Covid dataset

# set working directory to the file path
setwd("/Users/brenayhoward/Downloads")

# read the CSV file in R
data <- read.csv("national-history.csv", header = TRUE)

# create a scatter plot on "death" & "onVentilattorCurrently in "R without using any external liobrary
plot(data$death, data$onVentilatorCurrently)

# change the axis labels: X axis "Number of Deaths", Y axis "Patients on Ventilator"
plot(data$death, data$onVentilatorCurrently, xlab= "Number of Deaths", ylab="Patients on Ventilator")

# remove the scientific notation and replot X scale
options(scipen=999)

# plot a scatter plot using external library ggplot2
library(ggplot2)

ggplot(data,aes(death,onVentilatorCurrently,colour=states)) +geom_point()