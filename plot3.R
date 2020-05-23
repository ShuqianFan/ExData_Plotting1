# (3)
with(hpc, plot(DT,Sub_metering_1 , xlab = '', ylab = 'Energy sub metering', type = 'n'))
lines(hpc$DT,hpc$Sub_metering_1, col = 'black')
lines(hpc$DT,hpc$Sub_metering_2, col = 'red')
lines(hpc$DT,hpc$Sub_metering_3, col = 'blue')

legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 1)

dev.copy(png, file = 'plot3.png')
dev.off()