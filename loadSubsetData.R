dataFile <- "household_power_consumption.txt"
data <- read.csv(file=dataFile,sep=";",colClasses = c("character","character",rep("numeric",7)),na="?")
data$Time <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date,"%d/%m/%Y")
dateRange <- as.Date(c("01/02/2007","02/02/2007"),"%d/%m/%Y")
subsetData <- subset(data,Date %in% dateRange)