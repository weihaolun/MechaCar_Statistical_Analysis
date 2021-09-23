# Install Library
library(tidyverse)

# Import and read in the csv file as a data frame
mecha_mpg <- read.csv(file='Datasources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Linear regression using lm() function for all 6 variables.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mecha_mpg)

# Summary() to determine p-value and the r-squared value.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mecha_mpg))

