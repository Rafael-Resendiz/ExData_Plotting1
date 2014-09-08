## Download the file
source("general_ploting.R") 
# Histogram
hist(eda2$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", 
     col="Red")

## Saving to file
dev.copy(png, file="plot1.png", 
height=480, 
width=480, 
units = "px", 
bg = "transparent")
dev.off() 
