hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
#hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
x <- subset(hpc, hpc$Date == as.character.Date("1/2/2007",))
y <- subset(hpc, hpc$Date == as.character.Date("2/2/2007",) )
z <- rbind(x,y)

# gap <- z[3]
 z <- z[complete.cases(z),]

dateTime <- paste(z$Date, z$Time)
dateTime <- setNames(dateTime, "DateTime")
z <- z[ ,!(names(z) %in% c("Date","Time"))]
z <- cbind(dateTime, z)
z$dateTime <- as.POSIXct(dateTime)
hist(z$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")