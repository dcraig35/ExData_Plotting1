##Load the necessary packages.

library(sqldf)
library(lubridate)
library(dplyr)

##Read in the data for only the days of interest.

raw_data <- read.csv.sql("household_power_consumption.txt", sql = "select * from 
                         file where Date in('1/2/2007','2/2/2007')", header 
                         = TRUE, sep = ";")

##COmbine the date and time variables into a single new variable and add that
##new variable to the original data frame.

raw_data <- mutate(raw_data, Day_Time = dmy_hms(paste(Date, Time)))

##Open a connection for creating the png file.

png("plot3.png", width = 480, height = 480)

##Generate the line plot of the three variables overlaid on the same graph, along
##with a legend indicating which data series is which.

with(raw_data, plot(raw_data$Day_Time,raw_data$Sub_metering_1, type = "l", 
                    xlab = "", ylab = "Energy sub metering"))

lines(raw_data$Day_Time,raw_data$Sub_metering_2, col = "red")

lines(raw_data$Day_Time,raw_data$Sub_metering_3, col = "blue")

legend("topright", legend = 
            c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1, col = c('black', 'red', 'blue'), cex = .75)

##Close the connection to the png file.

dev.off()