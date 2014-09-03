# sets working directory to my local
setwd("~/Desktop/CS3654/CMDA")
csvdata<- read.table('cars1.csv', sep=",", header=T)
dim(csvdata)
var1<- csvdata[2,2]
var1
names(csvdata)
csvdata[1]
csvdata[2]
SPEED<- csvdata$speed
print(SPEED)
csvdata[15,]
