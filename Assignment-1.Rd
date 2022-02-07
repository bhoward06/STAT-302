# Author: Howard, Date: Feb 7 2022, Purpose: Make a bar plot from national-history.csv data using ggplot

# set working directory
setwd("/Users/brenayhoward/Downloads")

# Read in the csv file
data <- read.csv("national-history.csv", header = TRUE)

# Try omiting NA's from dataframe
data3 <-na.omit(data)

# Selelcting rows 93 & 94 from data and storing it into a new data frame called data2
data2 <-data3[93:94,]

# Make a bar plot using library ggplot
library(ggplot2)

p <- ggplot(data=data2,aes(x=death,y=onVentilatorCurrently))+geom_bar(color="blue", stat="identity", fill="red")+ theme_minimal()