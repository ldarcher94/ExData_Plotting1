### Exploratory Data Analysis ###
### Week 1 Course Project ###
### Plot 2 ###

setwd('/home/luke/Documents/Data_Sci_Coursera/Exploratory_Data_Analysis/ExData_Plotting1/')

## Use script 'prepare_data.R' to check for presence of data, then read and subset
source('prepare_data.R')

dates <- house.pwr.subset$Date
times <- house.pwr.subset$Time

datetimes <- paste(dates, times)
datetimes <- strptime(datetimes, '%d/%m/%Y %H:%M:%S')

global.active.power <- house.pwr.subset$Global_active_power

png('plot2.png', height = 480, width = 480)
plot(datetimes, global.active.power, type = 'l', ylab = 'Global Active Power (kilowatts)',
     xlab = '')
dev.off()

?plot
