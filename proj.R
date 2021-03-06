library(sqldf)
hpc <- read.csv2.sql('household_power_consumption.txt', sql = "select * from file where Date in ('1/2/2007','2/2/2007')")
setwd("~/Documents/R/4ExploratoryDataAnalysis/ExData_Plotting1")

# plot 1             
hist(hpc$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')

dev.copy(png, file = 'plot1.png')
dev.off()

# plot 2
table(hpc$Date)

# reset format of date and time
library(lubridate)
hpc$DT <- paste(hpc$Date, hpc$Time)
head(hpc)
hpc$DT <- strptime(hpc$DT, format = '%d/%m/%Y %H:%M:%S')
head(hpc)

with(hpc, plot(DT, Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatts)', type = 'n'))
lines(hpc$DT,hpc$Global_active_power)

dev.copy(png, file = 'plot2.png')
dev.off()

# plot 3
with(hpc, plot(DT,Sub_metering_1 , xlab = '', ylab = 'Energy sub metering', type = 'n'))
lines(hpc$DT,hpc$Sub_metering_1, col = 'black')
lines(hpc$DT,hpc$Sub_metering_2, col = 'red')
lines(hpc$DT,hpc$Sub_metering_3, col = 'blue')

legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 1)

dev.copy(png, file = 'plot3.png')
dev.off()

# plot 4

par(mfrow = c(2,2))

with(hpc, plot(DT, Global_active_power, xlab = '', ylab = 'Global Active Power', type = 'n'))
lines(hpc$DT,hpc$Global_active_power)

with(hpc, plot(DT, Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'n'))
lines(hpc$DT,hpc$Voltage)

with(hpc, plot(DT,Sub_metering_1 , xlab = '', ylab = 'Energy sub metering', type = 'n'))
lines(hpc$DT,hpc$Sub_metering_1, col = 'black')
lines(hpc$DT,hpc$Sub_metering_2, col = 'red')
lines(hpc$DT,hpc$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 1, bty = 'n', cex = 0.5)

with(hpc, plot(DT, Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'n'))
lines(hpc$DT,hpc$Global_reactive_power)

dev.copy(png, file = 'plot4.png')
dev.off()
