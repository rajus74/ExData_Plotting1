source("loadSubsetData.R")
png("plot2.png",width = 480,height=480)
plot(subsetData$Time, subsetData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()