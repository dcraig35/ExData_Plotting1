##Load the sqldf package.

library(sqldf)

##The use of this package allows for a query to be run against the data file so
##that only the two days of interest are read in.

raw_data <- read.csv.sql("household_power_consumption.txt", sql = "select * from 
                         file where Date in('1/2/2007','2/2/2007')", header 
                         = TRUE, sep = ";")

##Generate the histogram plot.

hist(raw_data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

##copy the plot that was generated to a png file.

dev.copy(png, filename = "plot1.png", width = 480, height = 480)

dev.off()