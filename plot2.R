## Plot 2

source("general_ploting.R")
plot(eda2$Global_active_power~eda2$Datetime, 
 type="l", 
 ylab="Global Active Power (kilowatts)", 
 xlab="")
dev.copy(png, file="plot2.png", 
 height=480, 
 width=480,
 units = "px", 
 bg = "transparent")
dev.off()
 
