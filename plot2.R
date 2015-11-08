dataFile <- "/Users/serranomario/Downloads/household_power_consumption.txt"
data<-read.table(dataFile,header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

days<-strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(days,as.numeric(datasub$Global_active_power),type="l", ylab="Global Active Power (kilowatts)",xlab="")
dev.off()