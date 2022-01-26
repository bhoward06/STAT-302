# Author: Howard, Date: Jan 26, 2022, Purpose: National Covid dataset link

# Set working directory to the file path
setwd("/Users/brenayhoward/Downloads")

# read the CSV file in R
data <- read.csv("national-history.csv", header = TRUE)

# dim() Function checks the dimension of your dataframe
dim(data)

# check names of columns in the dataframe
names(data)

# example, i want to select 2 columns named "date", "positive" and makes new data frame named "data2"
data$"date"
data$"positive"

data2 <- data.frame(data$date, data$positive)
head(data2)

# Check the summary stats (mean, median, max, min, and missing values/NA) of your data
summary(data)

data types:
# numerical value: 0, 1,2,...
# doubles/floats: 0.0, 1.0, 2.0,...
# characters: a, b , c, ...
# strings: abcd, efgh,...

# checking the data structure
is.data.frame(data)
is.matrix(data)

# checking the data type
is.numeric(data)
is.numeric(data$"death")

# checking the missing values
is.na(data$"death")

# extract elements of summary output
df <- data.frame(unclass(summary(data)))
df[6,2]
















