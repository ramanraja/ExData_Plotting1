## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" 

## Data Description

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

* The dataset has 2,075,259 rows and 9 columns. 

* We will only be using data from the dates 2007-02-01 and
2007-02-02.  

* Missing values are coded as `?`. But there are no missing values on the two days of interest for us

## Making Plots

Our overall goal here is  to examine how household energy usage
varies over a 2-day period in February, 2007. The task was to 
reconstruct the following plots, all of which were constructed
using the base plotting system.

* Created a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot. 

* The additional file `processData.R` reads the original text file, 
extracts the data for the two dates in February and saves it in a 
comma separated file 'power_consumption_transformed.csv` for later use. 
This increases speed and efficiency of the operations.

* Constructed each plot and saved it to a PNG file with a width of 480
pixels and a height of 480 pixels (this is the default size for R).

* The plot files are `plot1.png`, `plot2.png`, `plot3.png`, and `plot4.png`.

* Added the PNG file and R code file to the student git repository

  
