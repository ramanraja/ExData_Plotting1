####################################################################
# processData.R         Author: Rajaraman     Date: 10 May 2014
# Read a text file containing electricity meter readings 
# Subset the data to 2 specific dates
# Save the subset in a csv file for later use
####################################################################

da = read.table ("household_power_consumption.txt", sep=";", header=T)
da$Date = as.Date(da$Date, format="%d/%m/%Y")  # change to date
date1 = as.Date("2007-02-01") 
date2 = as.Date("2007-02-02")
da = subset(da, Date==date1 | Date==date2)  # subset for the 2 days only
write.csv (da, "power_consumption_transformed.csv", row.names=F) # save the cut data
