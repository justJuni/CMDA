#09-02-14 Jun Kim 88805 CS-3654 HW1 09-02-14

# sets working directory to my local
getwd()
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
# 1. create 4x4 matrix using cbind
MAT1= cbind(c1,c2,c3,c4)
MAT1
# 2. list last element of the matrix
MAT1[4,4]
# 3. transpose matrix
t(MAT1)
# 4. inverse matrix
solve(MAT1)

#######################################################################################
# Problem 3
# 1. read from the link
fpe <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat")
# 2. print out only for rows with 0 efforts
fpe[fpe$effort == 0,]
# 3. print names of the fpe
names(fpe)
# 4. print only row names
row.names(fpe)
# 5. Head only peaks and shows just a few lines of the table
head(fpe)
# 6. writing to files for csv and txt formats
write.csv(fpe, "fpe.csv")
write.table(fpe, "fpe.txt")
