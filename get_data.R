### Exploratory Data Analysis ###
### Week 1 Course Project ###
## Data acquisition ##

## Check for data, download and unzip if necessary

zipfile <- 'data/household_power_consumption.zip'
datafile <- 'data/household_power_consumption.txt'

if(!file.exists(zipfile)) {
        print('Downloading data...')
        url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
        download.file(url, destfile = filename, method = 'curl')
}
if(!file.exists(datafile)) {
        print('Unzipping data...')
        unzip(zipfile, exdir = 'data/')
}

print('Data file present and unzipped.')