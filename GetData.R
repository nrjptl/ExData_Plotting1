if(!file.exists("household_power_consumption.txt")){
        ## downloading zip file and unzupping it if the dataset file does not exist.
        zipurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(zipurl, destfile = "ElectricalPower.zip")
        unzip("ElectricalPower.zip")
}

# Reading the data from txt file. Using fread for faster operation.
data <- fread("household_power_consumption.txt")
data<-as.data.frame(data)

# converting Date column into POSIXlt form for date comparision.
data[["Date"]] <- as.POSIXlt(as.Date(data$Date, "%d/%m/%Y"))
start <- as.POSIXlt(as.Date("2007-02-01","%Y-%m-%d"))
end <- as.POSIXlt(as.Date("2007-02-02","%Y-%m-%d"))

# getting the data in which we have interest on.
interest <- data[data$Date == start | data$Date == end,]

# Removing variables as it is unused now.
rm(data,start,end)
