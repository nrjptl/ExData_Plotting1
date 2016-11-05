source(file.path(getwd(),"GetData.R"))

# Convert date and time to date:time format.
dateData <- strptime(paste(interest$Date,interest$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

# fetching Global Active Power data.
GlobalActivePower <- as.numeric(interest$Global_active_power)

# open a png file names "plot1.png"
png("plot2.png",width = 480, height = 480)
# Plotting
plot(dateData,GlobalActivePower,type="l",xlab = "",ylab = "Global Active Power (kilowatts)")

# Closing the file.
dev.off()

