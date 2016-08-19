
# Course Project 1
#by FA
#Part 3

setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")
par(mfrow = c(1,1))
data<-"household_power_consumption.txt"
data1<-read.table(data, header=T, sep=";", stringsAsFactors=F, dec=".")
subsetdata1 <- data1[data1$Date %in% c("1/2/2007", "2/2/2007"), ]
x<- as.numeric(subsetdata1$Global_active_power)
datetime <- strptime(paste(subsetdata1$Date, subsetdata1$Time, sep= " "), "%d/%m/%Y %H:%M:%S")
a <- as.numeric(subsetdata1$Sub_metering_1)
b<- as.numeric(subsetdata1$Sub_metering_2)
c<- as.numeric(subsetdata1$Sub_metering_3)


png("plot3.png", width = 480, height = 480)
plot(datetime, a, type = "l", ylab = "Energy sub metering", xlab = "")
lines(datetime, b, type="l", col="red")
lines(datetime, c, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col= c("black", "red", "blue"))
dev.off()







