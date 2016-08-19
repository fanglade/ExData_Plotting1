# Course Project 1
#by FA
#Part 2


setwd("C:/Users/Frederic/Downloads/exdata%2Fdata%2Fhousehold_power_consumption")
par(mfrow = c(1,1))
data<-"household_power_consumption.txt"
data1<-read.table(data, header=T, sep=";", stringsAsFactors=F, dec=".")
subsetdata1 <- data1[data1$Date %in% c("1/2/2007", "2/2/2007"), ]
x<- as.numeric(subsetdata1$Global_active_power)
datetime <- strptime(paste(subsetdata1$Date, subsetdata1$Time, sep= " "), "%d/%m/%Y %H:%M:%S")
dev.copy(png, file = "Plot2.png", width = 480, height = 480) ## Copy my plot to a PNG file
plot(datetime, x, type= "l", xlab= "", ylab= "Global Active Power (kilowatts)")
dev.off() ## Don't forget to close the PNG device!

