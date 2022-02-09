# Author: Howard, Date: Feb 9 2022, Purpose: Performing Correlation Analysis on National Covid dataset

# Set working directory
setwd("/Users/brenayhoward/Downloads")

# Read in the csv file
data <- read.csv("national-history.csv", header = TRUE)

library(corrplot)
data_2 <- data[1:20,]
data_matrix <- data_2[,2:5]
res <- cor(data_matrix)
corrplot(res, type = "upper", order = "hclust", tl.col = "black", tl.srt =45)

