##exploratory analysis week 1 course project
#loading and subsetting the data
dir <- "F://document//R learning//cousera r programming//exploratory analysis//exdata_data_household_power_consumption"
setwd(dir)
alldata <- read.table("household_power_consumption.txt",header= TRUE,sep = ";",stringsAsFactors = FALSE)
data <- alldata[which(alldata$Date%in%c("1/2/2007","2/2/2007")),] 
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#plot 4
png("plot4.png",width = 480,height = 480)
par(mfrow=c(2,2),cex=0.8)
plot(datetime,as.numeric(data$Global_active_power),type = "l",ylab = "Global Active Power",xlab = " ")
plot(datetime,as.numeric(data$Voltage),type = "l",ylab = "Voltage")
plot(datetime,as.numeric(data$Sub_metering_1),type = "l",ylab = "Energy sub metering",xlab = " ")
lines(datetime,as.numeric(data$Sub_metering_2),col="red")
lines(datetime,as.numeric(data$Sub_metering_3),col="blue")
legend("topright",lty =1,col = c("black","red","blue"),bty = "n",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(datetime,as.numeric(data$Global_reactive_power),type = "l",ylab = "Global_reactive_power")
dev.off()