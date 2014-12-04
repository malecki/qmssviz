getwd()
setwd('/Users/florenceclee/Desktop/qmssviz/hw4')

#Read in data
ereadDat<-read.csv("January_2014_Ereading_Gadgets_CSV.csv", stringsAsFactors=FALSE)
head(ereadDat)

#Subset data
#We only want to include those who used a cellphone.
#We only want to include those who answered either 'Yes' or 'No' to smartphone.

ereadDat2 <- subset(ereadDat, pial1a==1|sample==2, select=c(psraid, sample, smart1, race))
str(ereadDat2)

##Clean up smartphone
ereadDat2$smartphone <- ereadDat2$smart1

for(i in (1:length(ereadDat2$smart1))) {
  if (ereadDat2$smart1[i]==8|ereadDat2$smart1[i]==9) {
    ereadDat2$smartphone[i]=NA
  }
  if (ereadDat2$smart1[i]==2) {
    ereadDat2$smartphone[i]=0
  }
}

ereadUse <- subset(ereadDat2, select=c(psraid, smartphone, race))

#Clean up race
##We want to have five race/ethnicity categories:
##White, Black, Asian/Pacific Islander, Mixed/Other, Native American

ereadUse$race2 <- ereadUse$race
str(ereadUse)

for (i in (1:length(ereadUse$race))) {
  if (ereadUse$race[i]==1) {
    ereadUse$race2[i]="White"
  }
  if (ereadUse$race[i]==2) {
    ereadUse$race2[i]="Black"
  }
  if (ereadUse$race[i]==3) {
    ereadUse$race2[i]="Asian/Pacific Islander"
  }
  if (ereadUse$race[i]==4|ereadUse$race[i]==6) {
    ereadUse$race2[i]="Mixed race/Other"
  }
  if (ereadUse$race[i]==5) {
    ereadUse$race2[i]="Native American"
  }
  if (ereadUse$race[i]==9) {
    ereadUse$race2[i]=NA
  }
}
  
#Create function to check for NAs
check <- function(data) {
  NAs <- sum(is.na(data))
  print(paste("NAs:", NAs))  # count NA's
  if (NAs > 0) {
    cc <- complete.cases(data)  # logical for each case (row)
    print(paste("Complete Cases:", all(cc)))  
    data[which(!complete.cases(data)),]
  }
}

#Check for NAs
check(ereadUse)
#Delete all NAs
ereadUse <- na.omit(ereadUse)
check(ereadUse)
str(ereadUse)
##There are 863 observations.

#Tidy up 
head(ereadUse)
cts <- as.data.frame(table(ereadUse$race2))
names(cts) <- c("Race", "Total")
cts
dat <- aggregate(ereadUse$smartphone, list(ereadUse$race2), mean)
names(dat) <- c("Race", "% Smartphone")
dat
eread <- merge(cts, dat, by = "Race")
eread$Smartphone <- eread[,"Total"] * eread[, "% Smartphone"]
eread[, "% Regular"] <- 1-eread[,"% Smartphone"]
eread$Regular <- eread[, "Total"] * eread[, "% Regular"]
eread

#Export to csv
write.csv(eread, file="ereadData.csv")

#Ideal graph
install.packages("ggplot2")
library(ggplot2)
head(ereadUse)
base <- qplot(factor(race2), data=ereadUse, geom="bar", fill=factor(smartphone))
mycol <- c("#CCCCCC", "#85C2FF")
colors <- scale_fill_manual(values=mycol)
theme <- theme_bw()
base + colors + theme
