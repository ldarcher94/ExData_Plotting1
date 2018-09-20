### Exploratory Data Analysis ###
### Week 1 Course Project ###
### Plot 4 ###

setwd('/home/luke/Documents/Data_Sci_Coursera/Exploratory_Data_Analysis/ExData_Plotting1/')

## Use script 'prepare_data.R' to check for presence of data, then read and subset
source('prepare_data.R')

## Extract Date and Time data
dates <- house.pwr.subset$Date
times <- house.pwr.subset$Time

## Combine date and time data, then convert to datetime format
datetimes <- paste(dates, times)
datetimes <- strptime(datetimes, '%d/%m/%Y %H:%M:%S')

## Extract necessary data as numeric
global.active.power <- as.numeric(house.pwr.subset$Global_active_power)
global.reactive.power <- as.numeric(house.pwr.subset$Global_reactive_power)
voltage <- as.numeric(house.pwr.subset$Voltage)
sub.metering.1 <- as.numeric(house.pwr.subset$Sub_metering_1)
sub.metering.2 <- as.numeric(house.pwr.subset$Sub_metering_2)
sub.metering.3 <- as.numeric(house.pwr.subset$Sub_metering_3)

## use png() func to produce png device and name
png('plot4.png', height = 480, width = 480)
## use par() function to set mfrow parameter
par(mfrow = c(2,2))

## Top left plot - global active power
plot(datetimes, global.active.power, type = 'l', ylab = 'Global Active Power',
     xlab = '')

## Top right plot - voltage
plot(datetimes, voltage, type = 'l', ylab = 'Voltage', xlab = 'datetime')

## Bottom left plot - sub metering
plot(datetimes, sub.metering.1, type = 'l', ylab = 'Energy sub metering', xlab = '')
lines(datetimes, sub.metering.2, type = 'l', col = 'red')
lines(datetimes, sub.metering.3, type = 'l', col = 'blue')
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1,
       lwd=2.5, col=c("black", "red", "blue"), bty = 'o')

## Bottom right plot - global reactive power
plot(datetimes, global.reactive.power, type = 'l', ylab = 'Global_reactive_power',
     xlab = 'datetime')

dev.off()
