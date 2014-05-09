####################################################################
# plot2.R         Author: Rajaraman     Date: 10 May 2014
# Read a text file containing electricity meter readings 
# Subset the data to 2 specific dates
# Plot a graph of the variable Global Active Power
# Save the plot in PNG files of standard size
####################################################################

# if the cut down data set does not exist, create it and save
if (file.exists("power_consumption_transformed.csv")) {
   # print("data file exists") 
   da = read.csv("power_consumption_transformed.csv", stringsAsFactor=FALSE, header=T)
} else {
   # print("data file not found")
   source("processData.R")   # Read the original full data set
   rm(list=ls())
   da = read.csv("power_consumption_transformed.csv", stringsAsFactor=FALSE, header=T)
}

da$Date = paste(da$Date, da$Time)  # combine date and time
da$Date = as.POSIXct (da$Date)     # convert to POSIX datetime object

# Plot Global active power and save in a 480x480 file
png("plot2.png")
plot(da$Date, da$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
