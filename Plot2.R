# Course Project 1
#by FA
#Part 2

setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")
par(mfrow = c(1,1))
x<-(as.numeric(household_power_consumption[, 3][66638 : 69517]))/1000
x<-round(x, digits = 3)
y<-(household_power_consumption[, 2][66638 : 69517])
plot(x~y, ylab ="Global Active Power (kilowatts)", xlab = "")


dev.copy(png, file = "Plot2.png", width = 480, height = 480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!


