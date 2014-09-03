# sets working directory to my local
setwd("~/Desktop/CS3654/CMDA")
# Read cars1.cs
csvdata<- read.table('cars1.csv', sep=",", header=T)
# 3. dimensions
dim(csvdata)
# 4.value of 2,2
var1<- csvdata[2,2]
var1
# 5.variable names
names(csvdata)
# 6.first and second columns
csvdata[1]
csvdata[2]
# 7.speed variable
SPEED<- csvdata$speed
# 8.out row 15
print(SPEED)
csvdata[15,]
