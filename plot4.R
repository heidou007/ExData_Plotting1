# plot4.png
png(file = "plot4.png")
par(mfrow = c(2, 2))

plot(df$DateTime, df$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power")
lines(df$DateTime, df$Global_active_power)

plot(df$DateTime, df$Voltage, type = "n", xlab = "datetime", ylab = "Voltage")
lines(df$DateTime, df$Voltage)

plot(df$DateTime, df$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
lines(df$DateTime, df$Sub_metering_1, col = "black")
lines(df$DateTime, df$Sub_metering_2, col = "red")
lines(df$DateTime, df$Sub_metering_3, col = "blue")
legend("topright", lty = 1, bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(df$DateTime, df$Global_reactive_power, type = "n", xlab = "datetime", ylab = "Global_reactive_power")
lines(df$DateTime, df$Global_reactive_power)
dev.off()
