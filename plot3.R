source(file.path(getwd(),"GetData.R"))

# Convert date and time to date:time format.
dateData <- strptime(paste(interest$Date,interest$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

# getting sub metering data.
subMeter1 <- as.numeric(interest$Sub_metering_1)
subMeter2 <- as.numeric(interest$Sub_metering_2)
subMeter3 <- as.numeric(interest$Sub_metering_3)

# open a png file names "plot1.png".
png("plot3.png",width = 480, height = 480)

# drawing plot lines and assigning legend values.
plot(dateData,subMeter1,type = "l",xlab = "",ylab = "Energy sub metering")
lines(dateData,subMeter2,type = "l", col = "red")
lines(dateData,subMeter3,type = "l", col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black","red","blue"),lty = 1)

# Closing the file.
dev.off()