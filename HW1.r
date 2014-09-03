#09-02-14 Jun Kim 88805 CS-3654 HW1 09-02-14

# sets working directory to my local
setwd("~/Desktop/CS3654/CMDA")
#######################################################################################
# Problem 1
# 6. When the header is True the headers are not read into the table. Therefore we can establish
# new names by col.names argument. If header is False, it shows the file's header.
csvdata<- read.table('prices.csv', sep=",", header=T, col.names=c("PRICE", "SQFT", "AGE", "NE"))
csvdata2<- read.table('prices.csv', sep=",", header=F)
print(csvdata)
print(csvdata2)

# 7. row.names gives the row names for the data frame

# 8. Removed the headers and renamed it with a,b,c.
txtdata<- read.table('lines.txt', sep='\t', header=T, col.names= c("a", "b", "c"))   
print(txtdata)

#######################################################################################
# Problem 2

c1= c(1,2,3,4)
c2= c(4,1,2,3)
c3= c(3,4,1,2)
c4= c(2,3,4,1)
# 1.
MAT1= cbind(c1,c2,c3,c4)
MAT1
# 2.
MAT1[4,4]

# 3.
t(MAT1)

# 4.
solve(MAT1)
