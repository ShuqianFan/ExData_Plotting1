# plot 4
# it's the forth part of a whole R file 'proj.R', reading file and library packages are same with plot1.R

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