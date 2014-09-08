# General ploting
 
 ## Download and read file
 eda <- read.table(file.choose(), skip = 1,sep =";",
  colClasses = c("character", "character", rep("numeric",7)), na = "?") 
 
 ### Delete first row and replace colnames
 names(eda) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
  "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
 
 ### Format Date
 eda$Date <- as.Date(eda$Date, format="%d/%m/%Y")
 
 ### Subsetting data
 eda2 <- subset(eda, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
 
 datetime <- paste(as.Date(eda2$Date), eda2$Time)
 eda2$Datetime <- as.POSIXct(datetime)
 
