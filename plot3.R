source("Cleaning.R")

png(filename = "plot3.png", width=480, height=480)

with(file, plot(dateTime, Sub_metering_1, type='n', xlab='', ylab='Energy Sub Metering'))
with(file, lines(dateTime, Sub_metering_1, col='black'))
with(file, lines(dateTime, Sub_metering_2, col='red'))
with(file, lines(dateTime, Sub_metering_3, col='blue'))
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=1,col=c("black","blue","red"))

dev.off()