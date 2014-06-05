# plot2.png - suppress plotting (type = "n"), then add lines
plot(df$DateTime, df$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(df$DateTime, df$Global_active_power)
dev.copy(png, file = "plot2.png")
dev.off()