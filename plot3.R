#Reads The Data
Data = read.table("household_power_consumption.txt",header = TRUE, sep = ";", na.strings ="?" , stringsAsFactors=FALSE);
#Transforms The Data in a matrix with only the wanted Variables in the wanted Days
Pos = Data[[1]] == "1/2/2007" | Data[[1]] == "2/2/2007";
Data = cbind(Data[[7]][Pos],Data[[8]][Pos],Data[[9]][Pos]);
#Plots the graph Whithout x scale
size = nrow(Data)
plot(1:size,Data[,1],type="l",ylab="Energy Sub metering",xlab="",xaxt = "n", col="black")
lines(1:size,Data[,2],type="l",col="red")
lines(1:size,Data[,3],type="l",col="blue")
#plots the scale
axis(1,c(1,(size/2),size),c("Thu" , "Fri" , "Sat"))
#plots the legend -- Ps:Had to ajust its size (in my computer it was too big)
legend("topright",cex = 0.7 ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1))
dev.copy(device = png,width = 480, height = 480,'plot3.png');
dev.off()
