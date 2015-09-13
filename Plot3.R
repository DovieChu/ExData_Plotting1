setwd("E:/Coursera/R_Programming/Exploratory Data Analysis/Project 1")
rm(list=ls(all.names=T))

data <- read.table("household_power_consumption.txt",header=T,sep=";")
data$Date = as.character(data$Date)

data1 <- rbind(data[data$Date == "1/2/2007", ],data[data$Date=="2/2/2007", ])

dataP31 <- as.numeric(as.character(data1$Sub_metering_1))
dataP32 <- as.numeric(as.character(data1$Sub_metering_2))
dataP33 <- as.numeric(as.character(data1$Sub_metering_3))

#Start the PNG file
png(filename="Plot3.png",width=480,height=480, units="px")
plot(dataP31,type="l",xaxt="n",ylab="Energe sub metering",xlab="")
lines(dataP32,col="red")  #add to the existing graph
lines(dataP33,col="blue")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
legend("topright", lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
dev.off()
