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

##Generate the line plot. 

plot(Global_active_power ~ Day_Time, data = raw_data, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

##copy the plot that was generated to a png file.

dev.copy(png, filename = "plot2a.png", width = 480, height = 480)

dev.off()