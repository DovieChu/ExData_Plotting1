setwd("E:/Coursera/R_Programming/Exploratory Data Analysis/Project 1")
rm(list=ls(all.names=T))

data <- read.table("household_power_consumption.txt",header=T,sep=";")
data$Date = as.character(data$Date)

data1 <- rbind(data[data$Date == "1/2/2007", ],data[data$Date=="2/2/2007", ])

dataPNG1 <- as.numeric(as.character(data1$Global_active_power))

#Start the PNG file
png(filename="Plot1.png",width=480,height=480, units="px")
hist(dataPNG1,col="red",main="Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()
