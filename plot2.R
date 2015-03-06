#Reads The Data
Data = read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings ="?" , stringsAsFactors=FALSE);
#Transforms The Data in a Vector with only the Global_Active_Power in the wanted Days
Data = Data[[3]][Data[[1]] == "1/2/2007" | Data[[1]] == "2/2/2007"]
#Plots the graph Whithout x scale
size = length(Data)
plot(1:size,Data,type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt = "n")
#plots the scale
axis(1,c(1,(size/2),size),c("Thu" , "Fri" , "Sat"))
dev.copy(device = png,width = 480, height = 480,'plot2.png');
dev.off()
