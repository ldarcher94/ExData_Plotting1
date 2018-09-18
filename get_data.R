### Exploratory Data Analysis ###
### Week 1 Course Project ###

## Check for data, download and unzip if necessary
setwd('/home/luke/Documents/Data_Sci_Coursera/Exploratory_Data_Analysis/ExData_Plotting1/')

filename <- 'household_power_consumption.zip'

if(!file.exists(paste('data/', filename))) {
        url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
        download.file(url, destfile = filename, method = 'curl')
}
if(!file.exists('data/household_power_consumption.txt')) {
        unzip(filename)
}
