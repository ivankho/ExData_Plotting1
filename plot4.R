source("Cleaning.R")
png(filename = "plot4.png", width=480, height=480)
par(mfrow=c(2,2)) # set frame
# (1,1)
with(file, plot(dateTime, Global_active_power, type='l', xlab='', ylab='Global Active Power'))

# (1, 2)
with(file, plot(dateTime, Voltage, type='l', xlab='datetime'))

# (2, 1)
with(file, plot(dateTime, Sub_metering_1, type='n', xlab='', ylab='Energy Sub Metering'))
with(file, lines(dateTime, Sub_metering_1, col='black'))
with(file, lines(dateTime, Sub_metering_2, col='red'))
with(file, lines(dateTime, Sub_metering_3, col='blue'))
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=1,col=c("black","blue","red"))

# (2, 2)
with(file, plot(dateTime, Global_reactive_power, type='l', xlab='datetime'))

dev.off()