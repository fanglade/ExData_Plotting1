# Course Project 1
#by FA
#Part 1

setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")
par(mfrow = c(1,1))
x<-(as.numeric(household_power_consumption[, 3][66638 : 69517]))/1000
x<-round(x, digits = 3)
hist(x, xlab ="Global Active Power (kilowatts)", main = "Global Active Power", 
     col= "red")

dev.copy(png, file = "Plot1.png", width = 480, height = 480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!




