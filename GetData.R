if(!file.exists("household_power_consumption.txt")){
        ## downloading zip file and unzupping it if the dataset file does not exist.
        zipurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(zipurl, destfile = "ElectricalPower.zip")
        unzip("ElectricalPower.zip")
}

library(data.table)

if(!"data.table" %in% loadedNamespaces()){
    install.packages("data.table")
}

# Reading the data from txt file. Using fread for faster operation.
data <- fread("household_power_consumption.txt")
data<-as.data.frame(data)

# getting the data in which we have interest on.
interest <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

# Removing variable as it is unused now.
rm(data)
