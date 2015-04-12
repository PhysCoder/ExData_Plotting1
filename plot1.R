setwd("D:/Education/GradSchool/Courses/coursera/Exploratory Data Analysis/")
source("readdata.R")

#plot1
hist(as.numeric(powerData$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.copy(png,'plot1.png')
dev.off()