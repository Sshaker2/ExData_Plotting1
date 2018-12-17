

#Read file
df<- read.table("household_power_consumption.txt", header=TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?")

#Subset using date
dfe<- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

#Launch graphic Device
png("plot1.png", width=480, height=480)

#Create graph 
hist(dfe$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")

#Exit device
dev.off()
