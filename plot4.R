## Plot 4
source("general_ploting.R")
par(mfrow=c(2,2), mar=c(4,4,2,2), oma=c(0,0,2,0))
with(eda2, {
plot(Global_active_power~Datetime, type="l", 
    ylab="Global Active Power", xlab="")
plot(Voltage~Datetime, type="l", 
    ylab="Voltage", 
    xlab="datetime")
plot(Sub_metering_1~Datetime, type="l", 
    ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
    legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(Global_reactive_power~Datetime, type="l", 
    ylab="Global Reactive Power",
    xlab="datetime")
           }
    )

## Saving to file
dev.copy(png, file="plot4.png", 
height=480, 
width=480,
units = "px", 
bg = "transparent")
dev.off()
