##Course Project 1 - Exploratory Data Analysis

###Purpose and Script Functions
The purpose of this project is to take the Individual Household Electric Power Consumption Data Set (available from the UC Irvine Machine Learning Repository)
and generate a set of four different exploratory graphs from the data.

Even though the data set contains data from over an approximately four year time
period, data from two specific days (2/1/2007 and 2/2/2007) were used for the purposes of this project.  

Each graph was created using R script with the corresponding name (e.g. plot1.png was created using plot1.R).  The following is a description of each of the R scripts contained in this repo:

 - Plot1.R:  Reads in the "household_power_consumption.txt" file using the read
   .csv.sql function, generates a histogram plot for the Global Active Power 
   variable, and saves the graph as a png image file (plot1.png).
 - Plot2.R:  Reads in the "household_power_consumption.txt" file using the read
   .csv.sql function, generates a new Day_Time variable through the mutate and 
   dmy_hms functions, then generates a line plot for the Global Active Power 
   variable vs. the day of the week and saves the plot as a png imaage file 
   (plot2.png). 
 - Plot3.R:  Performs the same data manipulation functions as Plot2.R, but 
   generates a line plot of the Sub_metering_1, Sub_metering_2, and Sub_metering_
   3 variables overlayed on each other vs the day of the week (with a legend 
   identifying each data series).  The plot is then saved as plot3.png.
 - Plot4.R:  Performs the same data manipulation functions as Plot2.R and 
   Plot3.R.  It then creates a 2x2 array of plots which include plot2, plot3, 
   Voltage vs day of the week, and Global Reactive Power vs day of the week.  The 
   final plot is then saved as plot4.png.
   
###Please Note:
Before running the R scripts you will need to install the dplyr, lubridate, and sqldf packages as the scripts rely on certain functions in each package.  Additionally, the unzipped data file will need to be located in your current working directory (which you will have to specify).  

###Data Set Background Information:
The information below is from the UCI website where the data set is housed
(https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption).  It provides information about the variables in the data set as well as the overall data set itself.

Data Set Information:

This archive contains 2075259 measurements gathered between December 2006 and November 2010 (47 months).
Notes:
1.(global_active_power*1000/60 - sub_metering_1 - sub_metering_2 - sub_metering_3) represents the active energy consumed every minute (in watt hour) in the household by electrical equipment not measured in sub-meterings 1, 2 and 3.
2.The dataset contains some missing values in the measurements (nearly 1,25% of the rows). All calendar timestamps are present in the dataset but for some timestamps, the measurement values are missing: a missing value is represented by the absence of value between two consecutive semi-colon attribute separators. For instance, the dataset shows missing values on April 28, 2007.

Attribute Information:

1.date: Date in format dd/mm/yyyy
2.time: time in format hh:mm:ss
3.global_active_power: household global minute-averaged active power (in  kilowatt)
4.global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5.voltage: minute-averaged voltage (in volt)
6.global_intensity: household global minute-averaged current intensity (in  ampere)
7.sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8.sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9.sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.