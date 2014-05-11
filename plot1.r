source("load_data.r")

png(filename="plot1.png", width = 480, height = 480, bg="transparent")

hist(data$Global_active_power, xlab="Global Active Power (kilowatts)",
     main="Global Active Power", col="red")

dev.off()