source("load_data.r")

plotEnergySubMetering <- function() {
    plot(data$dateTime, data$Sub_metering_1, type="l",
         ylab="Energy sub metering", xlab="")
    lines(data$dateTime, data$Sub_metering_2, col="red")
    lines(data$dateTime, data$Sub_metering_3, col="blue")
    
    legend("topright", col=c("black", "blue", "red"), 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lwd=1, bty="n")
}

png(filename="plot4.png", width = 480, height = 480, bg="transparent")

par(mfrow = c(2,2))

with(data, {
    plot(dateTime, Global_active_power, type="l",
         ylab="Global Active Power (kilowatt)", xlab="")
    plot(dateTime, Voltage, type="l")
    plotEnergySubMetering()
    plot(dateTime, Global_reactive_power, type="l")
})


dev.off()