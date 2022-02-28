# Author: Howard, Date: Feb 28, Purpose: The answers to in class assignement no2

# Set working directory
setwd("/Users/brenayhoward/Downloads")

# Read data file into a variable called data
data <- read.csv("ddf--entities--geo--country.csv", header = TRUE)

# Subselect the 2 columns "iso3166_1_numeric" and "latitude"
data2 <- data[,c(8,11)]

# Getting rid of NA values using following function
data2 <-na.omit(data2)

# Correlation plot using library(ggpubr)
library(ggpubr)
ggscatter(data2, x="iso3166_1_numeric", y="latitude", add="reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "iso3166_1_numeric", ylab = "latitude")

# Load the library RColor Brewer
library("RColorBrewer")


data3 <-data[,c(1,8,11)]
data3 <- na.omit(data3)
row.names(data3)<- data3[,1]
data3<- data3[,-1]

# Scale data3
df<- scale(data3)

# Generate a color pallete
col<- colorRampPalette(brewer.pal(10, "RdYlBu"))(256)

# Use function heatmap tp generate a heatmap
heatmap(df, scale ="none", col =col, Colv=NA, Rowv=NA)

# Generate pheatmap
install.packages("pheatmap")
library(pheatmap)

pheatmap(df, cutree_rows =4, fontsize_row=1, fontsize_col=7)

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("affy")
