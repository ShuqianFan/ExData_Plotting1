library(sqldf)
hpc <- read.csv2.sql('household_power_consumption.txt', sql = "select * from file where Date in ('1/2/2007','2/2/2007')")
setwd("~/Documents/R/4ExploratoryDataAnalysis/ExData_Plotting1")

# plot 1             
# the first part of 'proj.R', which is in this git repository as well

hist(hpc$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')

dev.copy(png, file = 'plot1.png')
dev.off()