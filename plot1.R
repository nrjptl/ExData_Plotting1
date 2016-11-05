source(file.path(getwd(),"GetData.R"))

# open a png file named "plot1.png"
png("plot1.png",width = 480, height = 480)

# Draw a histerogram as the requirement
hist(as.numeric(interest$Global_active_power),main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")

# Closing the file.
dev.off()
