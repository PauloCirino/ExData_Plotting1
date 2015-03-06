#Reads The Data
Data = read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings ="?" , stringsAsFactors=FALSE);
#Transforms The Data in a Vector with only the Global_Active_Power in the wanted Days
Data = Data[[3]][Data[[1]] == "1/2/2007" | Data[[1]] == "2/2/2007"]
#Makes the histogram
hist(Data,col="red",main="Global Active Power",xlab="Global Actuve Power (kilowatts)")
dev.copy(device = png,width = 480, height = 480,'plot1.png');
dev.off()