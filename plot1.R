##exploratory analysis week 1 course project
#loading and subsetting the data
dir <- "F://document//R learning//cousera r programming//exploratory analysis//exdata_data_household_power_consumption"
setwd(dir)
alldata <- read.table("household_power_consumption.txt",header= TRUE,sep = ";",stringsAsFactors = FALSE)
data <- alldata[which(alldata$Date%in%c("1/2/2007","2/2/2007")),] 

#plot png 1
hist(as.numeric(data$Global_active_power),col = "red",main = "Global Active Power",ylab="Global_active_power",xlab=" ")
dev.copy(png,file="plot1.png")
dev.off()


