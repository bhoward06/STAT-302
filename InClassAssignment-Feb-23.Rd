#Author: Howard, Date: Feb 23 2022, Purpose: 

setwd("/Users/brenayhoward/Downloads")

data <- read.csv("ddf--entities--geo--country.csv", header = TRUE)

# Remove Scientific Notatation
options(scipen=999)

# Perform the correlation analysis between "iso3166_1_numeric" and "latitude"
library(ggpubr)

ggscatter(data, x="iso3166_1_numeric", y="latitude", add="reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "iso3166_1_numeric", ylab = "latitude")

# Using library RColorBrewer for genereating heatmap for columns latitude and country
library("RColorBrewer")
data2 <- data.frame(data$latitude, data$country, data$iso3166_1_numeric)
data3 <- as.matrix(na.omit(data2))
data4 <- as.matrix(c(as.numeric(data3[,1]), as.numeric(data3[,3])))
data4  <- as.numeric(data4))

as.numeric(data$latitude)

mat <- as.matrix()

data <- scale(data$latitude)
col<- colorRampPalette(brewer.pal(10, "RdYlBu"))(256)
heatmap(as.numeric(data3[,1]),as.numeric(data3[,3]), scale="none", col=col,Colv=NA, Rowv=NA,RowSideColors = rep(c("blue","pink"), each = 16),ColSideColors = c(rep("purple", 5), rep("orange",6)))
