dataFile <- "/Users/serranomario/Downloads/household_power_consumption.txt"
data<-read.table(dataFile,header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

days<-strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=480, height=480)
plot(days,datasub$Sub_metering_1,type="l",ylab="Energy sub metering",xlab=" ")
lines(days,datasub$Sub_metering_2,type="l",col="red")
lines(days,datasub$Sub_metering_3,type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, 
       col=c("black", "red", "blue"))
dev.off()
