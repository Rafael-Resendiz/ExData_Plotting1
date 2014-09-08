# General ploting
====================
____________________
 
### Download and read file
     eda <- read.table(file.choose(), skip = 1,sep =";",
     colClasses = c("character", "character", rep("numeric",7)), 
     na = "?") 
 
### Delete first row and replace colnames
     names(eda) <- c("Date", "Time", "Global_active_power", 
     "Global_reactive_power", "Voltage", "Global_intensity",
     "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
 
### Format Date
     eda$Date <- as.Date(eda$Date, format="%d/%m/%Y")
 
### Subsetting data
     eda2 <- subset(eda, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
     datetime <- paste(as.Date(eda2$Date), eda2$Time)
### Format date
     eda2$Datetime <- as.POSIXct(datetime)

 
## Plot 1
_____________
     source("general_ploting.R")
     hist(eda2$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
     dev.copy(png, file="plot1.png", 
     height=480,
     width=480,
     units = "px", 
     bg = "transparent")
     dev.off() 

## Plot 2
_____________

     source("general_ploting.R")
     plot(eda2$Global_active_power~eda2$Datetime, 
     type="l", 
     ylab="Global Active Power (kilowatts)", 
     xlab="")
     
## Saving to file
     dev.copy(png, file="plot2f.png", 
     height=480, 
     width=480,
     units = "px", 
     bg = "transparent")
     dev.off()







