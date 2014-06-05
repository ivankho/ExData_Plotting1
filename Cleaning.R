file <- read.table("household_power_consumption.txt", header = TRUE, sep=';')

file <- transform(file, Date = as.Date(Date, "%d/%m/%Y"))
file <- file[file$Date == "2007-02-01" | file$Date == "2007-02-02",]
rownames(file) = NULL
file <- transform(file, Global_active_power = as.numeric(levels(Global_active_power)[as.integer(Global_active_power)]))
file <- transform(file, dateTime = as.POSIXct(paste(Date, Time), format="%Y-%m-%d %H:%M:%S"))

file <- transform(file,Sub_metering_1 = as.numeric(levels(Sub_metering_1)[as.integer(Sub_metering_1)]), 
                  Sub_metering_2 = as.numeric(levels(Sub_metering_2)[as.integer(Sub_metering_2)]))
file <- transform(file, Global_reactive_power = as.numeric(levels(Global_reactive_power)[as.integer(Global_reactive_power)]))