
#Read file
df<- read.table("household_power_consumption.txt", header=TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?")

#Subset using date
dfe<- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

#Change date and time class
datetime <- strptime(paste(dfe$Date, dfe$Time, sep = ""), format="%d/%m/%Y %H:%M:%S")

#Launch graphic device
png("plot3.png", width=480, height=480)

#Create graph
plot(datetime, dfe$Sub_metering_1, type = "l", xlab= "", ylab = "Energy sub metering")
lines(datetime,dfe$Sub_metering_2, type = "l", col = "red")
lines(datetime,dfe$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red", "blue"), lty=1)

#Exit device
dev.off()

