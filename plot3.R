#plot3
if(!file.exists('plots')) dir.create('plots')  
png(filename = './plots/plot3.png', width = 480, height = 480, units='px') 
with(dataset, {
  plot(Sub_metering_1 ~ DateTime, type = 'l',
       ylab = 'Global Active Power (kilowatts)', xlab = "")
  lines(Sub_metering_2 ~ DateTime, col = 'red')
  lines(Sub_metering_3 ~ DateTime, col = 'blue')
})
legend('topright', col = c('black', 'red', 'blue'), lwd = c(1, 1, 1), 
       c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off() 
