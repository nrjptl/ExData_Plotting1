source(file.path(getwd(),"GetData.R"))

# Convert date and time to date:time format.
dateData <- strptime(paste(interest$Date,interest$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

# fetching Required data.
GlobalActivePower <- as.numeric(interest$Global_active_power)
voltage <- as.numeric(interest$Voltage)
subMeter1 <- as.numeric(interest$Sub_metering_1)
subMeter2 <- as.numeric(interest$Sub_metering_2)
subMeter3 <- as.numeric(interest$Sub_metering_3)
GlobalReactivePower <- as.numeric(interest$Global_reactive_power)

# open a png file names "plot1.png".
png("plot4.png",width = 480, height = 480)

par(mfrow = c(2,2))
plot(dateData,GlobalActivePower,xlab = "",ylab = "Global Active Power", type = "l")

plot(dateData,voltage,xlab = "datetime", ylab = "Voltage", type = "l")

plot(dateData,subMeter1,type = "l",xlab = "",ylab = "Energy Sub metering")
lines(dateData,subMeter2,type = "l", col = "red")
lines(dateData,subMeter3,type = "l", col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black","red","blue"),lty = 1)

plot(dateData,GlobalReactivePower,type = "l",xlab = "datetime",ylab = "Global_reactive_power")

# Closing the file.
dev.off()