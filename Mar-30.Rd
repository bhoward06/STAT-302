# Author: Howard, Date: Mar 30, 2022, Purpose: To generate normal distribution plot for dummy data

# Genrate dummy data
x <- seq(-10, 10, by=.1)

# Use dnorm() with some mean and standard deviation values
y <- dnorm(x, mean = 2.5, sd= 1)

# Plot x and y to generate a scatter plot for normal distribution curve
plot(x,y, col="blue")

# Create legend on plot
legend(-10, .3, legend=c("Dummy Data"), col=c("blue"), pch=1, cex=0.8)
#lty is for line

