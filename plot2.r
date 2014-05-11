source("load_data.r")

png(filename="plot2.png", width = 480, height = 480, bg="transparent")

plot(data$dateTime, data$Global_active_power, type="l",
     ylab="Global Active Power (kilowatt)", xlab="")

dev.off()