##exploratory analysis week 1 course project
#loading and subsetting the data
dir <- "F://document//R learning//cousera r programming//exploratory analysis//exdata_data_household_power_consumption"
setwd(dir)
alldata <- read.table("household_power_consumption.txt",header= TRUE,sep = ";",stringsAsFactors = FALSE)
data <- alldata[which(alldata$Date%in%c("1/2/2007","2/2/2007")),] 
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#plot 3
plot(datetime,as.numeric(data$Sub_metering_1),type = "l",xlab = " ",ylab = "Energy sub metering")
lines(datetime,as.numeric(data$Sub_metering_2),col="red")
lines(datetime,as.numeric(data$Sub_metering_3),col="blue")
legend("topright",lty = 1,lwd = 2.5,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,file="plot3.png")
dev.off()
