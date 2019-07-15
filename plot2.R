##exploratory analysis week 1 course project
#loading and subsetting the data
dir <- "F://document//R learning//cousera r programming//exploratory analysis//exdata_data_household_power_consumption"
setwd(dir)
alldata <- read.table("household_power_consumption.txt",header= TRUE,sep = ";",stringsAsFactors = FALSE)
data <- alldata[which(alldata$Date%in%c("1/2/2007","2/2/2007")),] 
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#plot2
plot(datetime,as.numeric(data$Global_active_power),type = "l",ylab = "Global Active Power (kilowatts)",xlab = " ")
dev.copy(png,file="plot2.png")
dev.off()
