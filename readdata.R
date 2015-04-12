setwd("D:/Education/GradSchool/Courses/coursera/Exploratory Data Analysis/")
fileCon <- file("household_power_consumption.txt","r")

powerColNames <- read.table(fileCon, sep=';',nrows=1, colClasses="character")
powerData <- read.table(fileCon,sep=";", skip=66636, nrows=2*24*60, colClasses="character")
close(fileCon)

names(powerData) <- powerColNames

powerData$Date <- as.Date(powerData$Date,"%d/%m/%Y")
powertimes <- mapply(paste, as.character(powerData$Date), powerData$Time)
powerData$DateTime <- as.POSIXct(powertimes)

# 
# result.list <- list() 
# currline <- read.table(fileCon, sep=';',nrows=1,colClasses="character")
# 
# while (length(currline)>0)
# {
#   currdate <- as.Date(currline[[1]],"%d/%m/%Y")
#   if (currdate>=as.Date("2007-02-01") | currdate<=as.Date("2007-02-02"))
#   {
#     result.list <- c(result.list, currline)
#   }
#   currline <- read.table(fileCon, sep=';',nrows=1, colClasses="character")
# }
# close(fileCon)
# selected.data <- data.frame(rbind(result.list),powerColNames)