# plot 2
# it's the second part of a whole R file 'proj.R', reading file and library packages are same with plot1.R

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