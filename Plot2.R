setwd("E:/Coursera/R_Programming/Exploratory Data Analysis/Project 1")
rm(list=ls(all.names=T))

data <- read.table("household_power_consumption.txt",header=T,sep=";")
data$Date = as.character(data$Date)

data1 <- rbind(data[data$Date == "1/2/2007", ],data[data$Date=="2/2/2007", ])

dataP2 <- as.numeric(as.character(data1$Global_active_power))

#Start the PNG file
png(filename="Plot2.png",width=480,height=480, units="px")
plot(dataP2,type="l",xaxt = "n",ylab="Global Active Power(kilowatts)",xlab="")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))
dev.off()
