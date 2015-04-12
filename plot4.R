setwd("D:/Education/GradSchool/Courses/coursera/Exploratory Data Analysis/")
source("readdata.R")

#plot 4
par(mfrow=c(2,2))
plot(powerData$DateTime,as.numeric(powerData$Global_active_power),type="l",xlab="",ylab="Global Active Power(kilowatts)")

plot(powerData$DateTime,as.numeric(powerData$Voltage),type="l",ylab="Voltage",xlab="datetime")

colors <- c("grey","red","blue")
plot(powerData$DateTime,as.numeric(powerData$Sub_metering_1),type="l",col=colors[1],xlab="",ylab='Energy sub metering')
lines(powerData$DateTime,as.numeric(powerData$Sub_metering_2),type="l",col=colors[2])
lines(powerData$DateTime,as.numeric(powerData$Sub_metering_3),type="l",col=colors[3])
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=colors,lty = 1)

plot(powerData$DateTime,as.numeric(powerData$Global_reactive_power),type="l",xlab="datetime",ylab="Global_reactive_power")

dev.copy(png,'plot4.png')
dev.off()