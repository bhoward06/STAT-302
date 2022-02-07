# Author: Howard, Date: Feb 7 2022, Purpose: Performing Correlation Analysis on National Covid dataset

setwd("/Users/brenayhoward/Downloads")

# Read in the csv file
data <- read.csv("national-history.csv", header = TRUE)

# Remove Scientific Notatation
options(scipen=999)

# Perform the correlation analysis between "states" and "death"
library(ggpubr)

ggscatter(data, x="states", y="death", add="reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "States", ylab = "Number of Deaths")

# Correlation without using library ggpubr]

cor.test(data$states,data$death, method="pearson")


library(corrplot)
data_2 <- data[1:20,]
data_matrix <- data_2[,2:5]
res <- cor(data_matrix)
corrplot(res, type = "upper", order = "hclust", tl.col = "black", tl.srt =45)