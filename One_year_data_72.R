
monthData <- read.csv("oneMonth_feb24.csv", header = TRUE)
as.factor(monthData$timestamp)
library(anytime)
monthTime <- anytime(monthData$timestamp) 
monthTime[1:1]

plot(monthTime, monthData$no_we, type = "l", xlab = "date",
     ylab = "Nitrogen oxides (raw voltages)")

## x <- yearData$timestamp[1:1]
## x
## strptime()

##yearData$timestamp <- as.POSIXct(yearData$timestamp, tz = "", offset = +5)
##yearData$timestamp

## plot(mydata$timestamp, myCO, type = "l", xlab = "year", ylab = "Carbon Dioxide (raw voltages)")

