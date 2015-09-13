setwd("E:/Coursera/R_Programming/Exploratory Data Analysis/Project 1")
rm(list=ls(all.names=T))

data <- read.table("household_power_consumption.txt",header=T,sep=";")
data$Date = as.character(data$Date)

data1 <- rbind(data[data$Date == "1/2/2007", ],data[data$Date=="2/2/2007", ])


#Make the PNG file
png(filename="Plot4.png",width=480,height=480, units="px")
par(mfrow = c(2,2))   #4 spaces

#The first graph
dataP2 <- as.numeric(as.character(data1$Global_active_power))
plot(dataP2,type="l",xaxt = "n",ylab="Global Active Power",xlab="")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

#The Second graph
dataP42 <- as.numeric(as.character(data1$Voltage))
plot(dataP42,type="l",xaxt = "n",ylab="Voltage",xlab="datetime")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

#The third graph
dataP31 <- as.numeric(as.character(data1$Sub_metering_1))
dataP32 <- as.numeric(as.character(data1$Sub_metering_2))
dataP33 <- as.numeric(as.character(data1$Sub_metering_3))

plot(dataP31,type="l",xaxt="n",ylab="Energe sub metering",xlab="")
lines(dataP32,col="red")
lines(dataP33,col="blue")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
legend("topright", lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))

#The fourth graph
dataP4 <- as.numeric(as.character(data1$Global_reactive_power))
plot(dataP4,type="l",xlab="datetime",ylab="Global_reactive_power",xaxt="n")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

dev.off()
