source("general_ploting.R")
 plot(eda2$Global_active_power~eda2$Datetime, 
     type="l", 
     ylab="Global Active Power (kilowatts)", 
     xlab="")
 dev.copy(png, file="plot2f.png", 
     height=480, 
     width=480)
 dev.off()
