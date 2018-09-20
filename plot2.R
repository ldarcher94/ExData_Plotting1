### Exploratory Data Analysis ###
### Week 1 Course Project ###
### Plot 2 ###

setwd('/home/luke/Documents/Data_Sci_Coursera/Exploratory_Data_Analysis/ExData_Plotting1/')

## Use script 'prepare_data.R' to check for presence of data, then read and subset
source('prepare_data.R')

## Extract Date and Time data
dates <- house.pwr.subset$Date
times <- house.pwr.subset$Time

## Combine date and time data, then convert to datetime format
datetimes <- paste(dates, times)
datetimes <- strptime(datetimes, '%d/%m/%Y %H:%M:%S')

## Extract global active power data to plot
global.active.power <- house.pwr.subset$Global_active_power

## use png() func to produce png device and name
png('plot2.png', height = 480, width = 480)
## Plot global active power against datetime
plot(datetimes, global.active.power, type = 'l', ylab = 'Global Active Power (kilowatts)',
     xlab = '')
dev.off()