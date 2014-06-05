# plot1.png
# read in the data, subset on the 2 given dates, remove row names
df <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", comment.char = "")
df <- subset(df, Date == "1/2/2007" | Date == "2/2/2007")
row.names(df) <- NULL

# merge Date and Time column and convert to Date objects, then remove Date and Time
df$DateTime <- paste(df$Date, df$Time, sep = " ")
df$DateTime <- strptime(df$DateTime, format = "%d/%m/%Y %H:%M:%S")
df <- df[, !(names(df) %in% c("Date", "Time"))]

# make histogram and save as png file
hist(df$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = 'red')
dev.copy(png, file = "plot1.png")
dev.off()