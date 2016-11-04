source(file.path(getwd(),"GetData.R"))

# open a png file names "plot1.png"
png("plot1.png")

# Draw a histerogram as the requirement
hist(as.numeric(interest$Global_active_power),main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col = "red")
# Closing the file.
dev.off()