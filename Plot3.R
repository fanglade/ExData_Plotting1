
# Course Project 1
#by FA
#Part 3

setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")
par(mfrow = c(1,1))
a<-(household_power_consumption[, 7][66638 : 69517])
b<-(household_power_consumption[, 8][66638 : 69517])
c<-(household_power_consumption[, 9][66638 : 69517])
y<-(household_power_consumption[, 2][66638 : 69517])
plot(a+b+c~y, ylab = "Energy sub metering", xlab = "", type ="n", ylim=c(0, 40))
lines(a~y, col = "black", lty=1)
lines(b~y, col = "red", lty =1)
lines(c~y, col ="blue", lty =1)
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

dev.copy(png, file = "Plot3.png", width = 480, height = 480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!






