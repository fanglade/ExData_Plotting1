# Course Project 1
#by FA
#Part 1

setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")
par(mfrow = c(1,1))
data<-"household_power_consumption.txt"
data1<-read.table(data, header=T, sep=";", stringsAsFactors=F, dec=".")
subsetdata1 <- data1[data1$Date %in% c("1/2/2007", "2/2/2007"), ]
x<- as.numeric(subsetdata1$Global_active_power)


dev.copy(png, file = "Plot1.png", width = 480, height = 480) ## Copy my plot to a PNG file
hist(x, xlab ="Global Active Power (kilowatts)", main = "Global Active Power", 
     col= "red")


dev.off() ## Don't forget to close the PNG device!


