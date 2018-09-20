### Exploratory Data Analysis ###
### Week 1 Course Project ###
### Data Preparation ###

## Use get_data.R to check presence of data files, and download if not
source('get_data.R')

## Check if data has been loaded, load if not
if(!exists('house.pwr')) {
        print('Reading household_power_consumption.txt...')
        house.pwr <- read.table(datafile, sep = ';', dec = '.',
                                header = TRUE, stringsAsFactors = FALSE)
}

print('Subsetting data...')

## Create date variables for range
date1 <- '1/2/2007'
date2 <- '2/2/2007'

## Take subset of data where date is between d1 and d2
house.pwr.subset <- house.pwr[house.pwr$Date %in% c(date1, date2), ]

print('Data prepared; variable house.pwr.subset created.')
