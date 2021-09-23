# Install Library
library(tidyverse)

# Import and read in the csv file as a data frame
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear regression using lm() function for all 6 variables.
lm(vehicle_length ~ mpg,mecha_mpg)

# Summary() to determine p-value and the r-squared value.
summary(lm(vehicle_length ~ mpg,mecha_mpg))
