# Gets the required data from the txt file.
loadData <- function() {
    myfile <- "household_power_consumption.txt"
    if (!file.exists(myfile)) {
        stop("unable to locate the required data file")
    }
    classes <- c(rep("factor", 2), rep("numeric", 7))
    data_all <- read.table(myfile, header=TRUE, sep=";", na.strings="?", colClasses=classes)
    data <- subset(data_all, data_all$Date == "1/2/2007" | data_all$Date == "2/2/2007" )
#     Delete the content of the original file to free up memory.
    rm(data_all)
    data
}

data <- loadData()
# Creates a new column to store date and time.
data$dateTime<- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")