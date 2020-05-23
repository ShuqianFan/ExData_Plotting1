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