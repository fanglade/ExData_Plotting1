# Course Project 1
#by FA
#Part 4


setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")

data<-"household_power_consumption.txt"
data1<-read.table(data, header=T, sep=";", stringsAsFactors=F, dec=".")
subsetdata1 <- data1[data1$Date %in% c("1/2/2007", "2/2/2007"), ]
s<- as.numeric(subsetdata1$Global_active_power)
datetime <- strptime(paste(subsetdata1$Date, subsetdata1$Time, sep= " "), "%d/%m/%Y %H:%M:%S")
z<-as.numeric(subsetdata1$Voltage)
a <- as.numeric(subsetdata1$Sub_metering_1)
b<- as.numeric(subsetdata1$Sub_metering_2)
c<- as.numeric(subsetdata1$Sub_metering_3)

t<-as.numeric(subsetdata1$Global_reactive_power)

par(mfrow = c(2,2))
plot(datetime, s, type= "l", xlab= "", ylab= "Global Active Power", cex = 0.2)

plot(datetime,z, type = "l" ,ylab = "Voltage", xlab = "datetime")

plot(datetime, a, type = "l", ylab = "Energy sub metering", xlab = "")
lines(datetime, b, type="l", col="red")
lines(datetime, c, type="l", col="blue")
par(mar=c(0, 0, 0))

legend( "topright",inset = 0.06, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       pt.cex =1.5,cex = 0.56, lty = 1 ,  lwd = 1, col= c("black", "red", "blue"), bty = "n", 
       text.width= NULL,x.intersp=1,
       y.intersp=.25,xjust = 10.5, yjust = 1.5, adj =c(0,.001), merge = FALSE)


plot(datetime, t, type = "l",ylab = "Global_reactive_power", xlab = "datetime")



dev.copy(png, file ="Plot4.png", width = 480, height = 480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!















