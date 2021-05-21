#convert data and time
dataset$Date <- as.Date(dataset$Date, format = '%d/%m/%Y')  
dataset$DateTime <- as.POSIXct(paste(dataset$Date, dataset$Time))

#plot2
if(!file.exists('plots')) dir.create('plots')  
png(filename = './plots/plot2.png', width = 480, height = 480, units='px') 
Sys.setlocale(category = "LC_ALL", locale = "english")  
plot(dataset$Global_active_power ~ dataset$DateTime, type = 'l', ylab = 'Global Active Power (kilowatts)', xlab = "")
dev.off()
