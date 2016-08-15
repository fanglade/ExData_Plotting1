# Course Project 1
#by FA
#Part 4


setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")
par(mfrow = c(2,2))
x<-(as.numeric(household_power_consumption[, 3][66638 : 69517]))/1000
x<-round(x, digits = 3)
y<-(household_power_consumption[, 2][66638 : 69517])
plot(x~y, ylab ="Global Active Power", xlab = "")

z<-(as.numeric(household_power_consumption[, 3][66638 : 69517]))
plot(z~y, ylab = "Voltage", xlab = "datetime")

plot(a+b+c~y, ylab = "Energy sub metering",xlab = "" ,type ="n", ylim=c(0.0,40))
lines(a~y, col = "black", lty=1)
lines(b~y, col = "red", lty =1)
lines(c~y, col ="blue", lty =1)
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

t<-(as.numeric(household_power_consumption[, 4][66638 : 69517]))
plot(t~y, ylab = "Global_reactive_power", xlab = "datetime")


dev.copy(png, file = "Plot4.png", width = 480, height = 480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!



