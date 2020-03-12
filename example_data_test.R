## Testing with example data

mydata <- read.csv(file.choose(), header = TRUE)
summary(mydata)
mydata$date <- as.POSIXct(strptime(mydata$date, format = "%d/%m/%Y %H:%M", tz = "GMT"))

plot(mydata$date, mydata$nox, type = "l", xlab = "year",
     ylab = "Nitrogen oxides (ppb)")
