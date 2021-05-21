#plot4
if(!file.exists('plots')) dir.create('plots')  
png(filename = './plots/plot4.png', width = 480, height = 480, units='px') 

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(dataset, {
  plot(Global_active_power ~ DateTime, type = 'l', 
       ylab = 'Global Active Power (kilowatts)', xlab = "")
  plot(Voltage ~ DateTime, type ='l', 
       ylab = 'Voltage (volt)', xlab = "")
  plot(Sub_metering_1 ~ DateTime, type = 'l', 
       ylab = 'Global Active Power (kilowatts)', xlab = "")
  lines(Sub_metering_2 ~ DateTime, col = 'red')
  lines(Sub_metering_3 ~ DateTime, col = 'blue')
  legend('topright', col = c('black', 'red', 'blue'), lty = 1, lwd = 2, bty = 'n',
         legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
  plot(Global_reactive_power ~ DateTime, type = 'l', 
       ylab = 'Global Rective Power (kilowatts)', xlab = "")
})
dev.off()
