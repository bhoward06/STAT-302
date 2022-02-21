# Author: Howard, Date: Feb 21 2022, Purpose: To generate heatmaps using 3 different libraries

# Using library RColorBrewer for genereating heatmap
library("RColorBrewer")

# Load a sample data called "mtcars"
df< -mtcars
df<- scale(df)
col<- colorRampPalette(brewer.pal(10, "RdYlBu"))(256)
heatmap(df, scale="none", col=col,Colv=NA, Rowv=NA,RowSideColors = rep(c("blue","pink"), each = 16),ColSideColors = c(rep("purple", 5), rep("orange",6)))

# Use gplots library to generate a heatmap
install.packages('gplots')
library ("gplots")
heatmap.2(df, scale = "none", col = bluered(100), trace = "none", density.info = "none")

# using library pheatmap
install.packages("pheatmap")
library("pheatmap")
pheatmap(df, cutree_rows =4)