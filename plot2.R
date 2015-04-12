setwd("D:/Education/GradSchool/Courses/coursera/Exploratory Data Analysis/")
source("readdata.R")

#plot2
plot(powerData$DateTime,as.numeric(powerData$Global_active_power),type="l",xlab="",ylab="Global Active Power(kilowatts)")

dev.copy(png,'plot2.png')
dev.off()