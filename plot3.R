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

## Extract sub metering data 1:3
sub.metering.1 <- as.numeric(house.pwr.subset$Sub_metering_1)
sub.metering.2 <- as.numeric(house.pwr.subset$Sub_metering_2)
sub.metering.3 <- as.numeric(house.pwr.subset$Sub_metering_3)

## use png() func to produce png device and name
png('plot3.png', height = 480, width = 480)
## Create plot of sub metering 1 against datetime, then add 2 and 3 with lines()
plot(datetimes, sub.metering.1, type = 'l', ylab = 'Energy sub metering', xlab = '')
lines(datetimes, sub.metering.2, type = 'l', col = 'red')
lines(datetimes, sub.metering.3, type = 'l', col = 'blue')
## Include legend in top right corner
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1,
        lwd=2.5, col=c("black", "red", "blue"))
dev.off()
