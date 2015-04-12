setwd("D:/Education/GradSchool/Courses/coursera/Exploratory Data Analysis/")
source("readdata.R")

#plot3
colors <- c("grey","red","blue")
plot(powerData$DateTime,as.numeric(powerData$Sub_metering_1),type="l",col=colors[1],xlab="",ylab='Energy sub metering')
lines(powerData$DateTime,as.numeric(powerData$Sub_metering_2),type="l",col=colors[2])
lines(powerData$DateTime,as.numeric(powerData$Sub_metering_3),type="l",col=colors[3])
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=colors,lty = 1)

dev.copy(png,'plot3.png')
dev.off()