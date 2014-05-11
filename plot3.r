source("load_data.r")

png(filename="plot3.png", width = 480, height = 480, bg="transparent")

plot(data$dateTime, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data$dateTime, data$Sub_metering_2, col="red")
lines(data$dateTime, data$Sub_metering_3, col="blue")

legend("topright", col=c("black", "blue", "red"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd=1)

dev.off()