### Exploratory Data Analysis ###
### Week 1 Course Project ###
### Plot 1 ###

setwd('/home/luke/Documents/Data_Sci_Coursera/Exploratory_Data_Analysis/ExData_Plotting1/')

## Use script 'prepare_data.R' to check for presence of data, then read and subset
source('prepare_data.R')

## Extract data for global active power and change class to numeric
global.active.power <- as.numeric(house.pwr.subset$Global_active_power)

## use png() func to produce png device and name
png('plot1.png', height = 480, width = 480)
## Use hist() function to produce histogram, and set labels/colour
hist(global.active.power, col = 'red', main = 'Global Active Power',
     xlab = 'Global Active Power (kilowatts)')
dev.off()
