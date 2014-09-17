getwd()
setwd("~/Desktop/CS3654")

#Load file phsample.RData
load("/Users/junkim/Downloads/phsample.RData")

#File includes large data frame of person or household regarding their
#Age, Employment, Education, and Sex through:
#min, 1st quarter, median, mean, 3rd quarter, and max.

names(dhus)
names(dpus)

dim(dhus)
dim(dpus)

summary(dhus)
summary(dpus)

class(dhus)
class(dpus)

#Subset of data rows matching detailed employment conditions
psub = subset(dpus,with(dpus,(PINCP>1000)&(ESR==1)& (PINCP<=250000)&(PERNP>1000)&(PERNP<=250000)& (WKHP>=40)&(AGEP>=20)&(AGEP<=50)& (PWGTP1>0)&(COW %in% (1:7))&(SCHL %in% (1:24))))

#Reencode sex from 1/2 to M/F.
psub$SEX = as.factor(ifelse(psub$SEX==1,'M','F')) 
#Make the reference sex M, so F encodes a difference from M in models.
psub$SEX = relevel(psub$SEX,'M')
cowmap <- c("Employee of a private for-profit",
            "Private not-for-profit employee",
            "Local government employee",
            "State government employee",
            "Federal government employee",
            "Self-employed not incorporated",
            "Self-employed incorporated")
#Reencode class of worker info into a more readable form.
psub$COW = as.factor(cowmap[psub$COW])
#Reencode education info into a more readable form and fewer levels (merge all levels below high school into same encoding).
psub$COW = relevel(psub$COW,cowmap[1])
schlmap = c(
  rep("no high school diploma",15),
  "Regular high school diploma",
  "GED or alternative credential",
  "some college credit, no degree",
  "some college credit, no degree",
  "Associate's degree",
  "Bachelor's degree",
  "Master's degree",
  "Professional degree",
  "Doctorate degree")
psub$SCHL = as.factor(schlmap[psub$SCHL])
psub$SCHL = relevel(psub$SCHL,schlmap[1])
#Subset of data rows used for model training.
dtrain = subset(psub,ORIGRANDGROUP >= 500)
#ubset of data rows used for model testing.
dtest = subset(psub,ORIGRANDGROUP < 500)
summary(dtrain$COW)

#create the R data frame
#Source: http://vincentarelbundock.github.io/Rdatasets/datasets.html
#Data is for the best valued cars from 1993
#Variables are: Number, Manufacturer, Vehicle Model, Minimum Price, Price Sold, Maximum Price,
# City Miles Per Gallon, Highway Miles Per Gallon, Airbags, DriveTrain, Number of Cylinerders
#Engine Size, Hoursepower, RPM, RPV, and Options
csvdata2<- read.table('Cars93-2.csv', sep=",", header=F)
csvdata2
