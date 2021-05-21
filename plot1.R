#download data
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'  
download.file(fileUrl, destfile='household_power_consumption.zip')  
unzip('household_power_consumption.zip')

#read data
housepower <- file('household_power_consumption.txt')
dataset <- read.table(text = grep("^[1,2]/2/2007",readLines(housepower),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?') 

#plot 1
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot1.png', width=480, height=480, units='px')
with(dataset, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
dev.off()

