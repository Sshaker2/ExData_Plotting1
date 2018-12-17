
#Read file
df<- read.table("household_power_consumption.txt", header=TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?")

#Subset using date
dfe<- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

#Change date and time class
datetime <- strptime(paste(dfe$Date, dfe$Time, sep = ""), format="%d/%m/%Y %H:%M:%S")

#Launch graphic device
png("plot2.png", width=480, height=480)

#Create graph 
plot(datetime, dfe$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = " ")

#Exit device
dev.off()


