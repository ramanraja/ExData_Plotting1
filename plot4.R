####################################################################
# plot4.R         Author: Rajaraman     Date: 10 May 2014
# Read a text file containing electricity meter readings 
# Subset the data to 2 specific dates
# Plot a 2x2 graph of the variables 
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

# Make a 2x2 matrix plot of the meter readings and save in a 480x480 file
png("plot4.png")
p = par (mfrow=c(2,2))  # 2x2 grid of plots
plot(da$Date, da$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot (da$Date, da$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot  (da$Date, da$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines (da$Date, da$Sub_metering_2, type="l", col="red")
lines (da$Date, da$Sub_metering_3, type="l", col="blue")
legend ("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
   lty=1, col=c("black", "red", "blue"), bty="n")
plot (da$Date, da$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
par(p) # restore the original graphic settings


