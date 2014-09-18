demo<-read.csv("Donation-Disease.csv",stringsAsFactors=F)
class(demo)
str(demo)
head(demo)
dim(demo)
summary(demo)
demo[2,2]
demo[["Name"]]
demo[[1]]
demo$Name

library(ggplot2)
ggplot(demo, aes(x=MoneyRaised, y=Death)) + geom_point(shape=1) 
demo$Death<-as.numeric(demo$Death)
demo$Death<-demo$Death/1000
ggplot(demo, aes(x=MoneyRaised, y=Death)) +
  geom_point(shape=1) +xlab("Money Raised million US$") + 
  ylab("Recent Record of Annual Death in US") + 
  ggtitle("Should we rethink where to donate?")
ggplot(demo, aes(x=MoneyRaised, y=Death,label=Name)) +
  geom_point(shape=1) +
  xlab("Money Raised million US$") + 
  ylab("Recent Record of Annual Death in US") + 
  ggtitle("Should we rethink where to donate?")+
  geom_text(aes(label=Name))
ggplot(demo, aes(x=MoneyRaised, y=Death,label=Name)) +
  geom_point(shape=1,size=0.3) +
  geom_text(aes(label=Name),size=1.8,position=position_jitter(width=-8, height=21))+
  xlab("Money Raised million US$") + 
  ylab("Recent Record of Annual Death in US") + 
  ggtitle("Should we rethink where to donate?")

## download package to read excel files ##
install.packages("XLConnect")
library("XLConnect")
wb <- loadWorkbook("UN_2011_Population_Cities_Over_750K.xlsx", create = FALSE)
# Show a summary of the workbook (shows worksheets,
# defined names, hidden sheets, active sheet name, ...)
summary(wb)
# Read data from a worksheet interpreting the first row as column names
    df1 <- readWorksheet(wb, sheet = "CITIES-OVER-750K", startRow=13, header=TRUE)
    # Read data from a named region/range interpreting the first row as column
    # names
    ## df2 <- readNamedRegion(wb, name = "myname", header = TRUE)
colnames(df1)<- c("Country.Code", "Country", "City.Code", "Urban.Agglomeration", 
                  "Note", "Latitude", "Longitude", "pop50", "pop55", "pop60", 
                  "pop65", "pop70", "pop75", "pop80", "pop85", "pop90", "pop95", 
                  "pop00", "pop05", "pop10", "pop15", "pop20", "pop25")
#Rename columns to reflect the dates of the population survey

country <- unique(df1$Country, incomparables=FALSE)
# create vector of unique countries within sheet
countries <- data.frame(table(df1$Country))
# frequecy table of unique countries as data frame for plot 
  #need to add average population to dataframe for graphing
df2 <- data.frame(df1$Country, df1$Col20, df1$Col21, df1$Col22)
library("plyr")
rename(df2, c("df1.Country"="Country","df1.Col20"="2010", "df1.Col21"="2015", 
              +               "df1.Col22"="2020"))
# attempt to rename columns for data.frame 
sum10<-aggregate(.~df1.Country, data=df2, sum)
# create data.frame of Countries by totaling population across large cities
mean10<-aggregate(.~df1.Country, data=df2, mean)
# create data.frame of Countries by mean population across large cities
max10<-aggregate(.~df1.Country, data=df2, FUN=max)
# create data.frame of Countries by largest city population
dfm <- merge(countries, mean10, by.x="Var1", by.y="df1.Country")
dfm1<- merge(dfm, sum10, by.x="Var1", by.y="df1.Country")
dfm2<- merge(dfm1, max10, by.x="Var1", by.y="df1.Country")
#merging tables into one
colnames(dfm2) <- c("Country", "Freq", "mean10", "mean15", "mean20", 
                    "sum10", "sum15", "sum20", "max10", "max15", "max20")
# Renaming columns in merged data.frame
ggplot(dfm1, aes(x=Freq, y=mean10,label=Country)) +
  geom_point(shape=1) +
  xlab("Number of Cities") + 
  ylab("Average Population") + 
  ggtitle("City Poplulation Distribution")+
  geom_text(aes(label=Country))
# first attempt - too many countries - cannot read data at all, 
  #besides the interesting outliers

ggplot(dfm1, aes(x=Freq, y=mean10,label=Country)) +
  geom_point(shape=1) +
  xlab("Number of Cities") + 
  ylab("Average Population") + 
  ggtitle("City Poplation Distribution")
# Graph without names

ggplot(dfm1, aes(x=Freq, y=mean10,label=Var1)) +
  geom_point(shape=1, size=0.3) +
  xlab("Number of Cities") + 
  ylab("Average Population") + 
  ggtitle("City Population Distribution")+
  geom_text(aes(label=Var1, size=0.1))
# Graph with smaller print

meansort <- subset(dfm2, select = c(Country, Freq, mean10, mean15, mean20))[order(-dfm2$mean10),]
sumsort <- subset(dfm2, select = c(Country, sum10, sum15, sum20))[order(-dfm2$sum10),]
maxsort <- subset(dfm2, select = c(Country, max10, max15, max20))[order(-dfm2$max10),]
#

dfintersect <- merge(meansort[1:25,], sumsort[1:25,], by.x="Country", by.y="Country")
#intersection of top 50 of both categories - 39 hits
dfintersect2 <- merge(dfintersect, maxsort[1:25,], by.x="Country", by.y="Country")
#intersection of top 50 in all 3 categories - 36 hits

dfintersect <- merge(meansort[1:25,], sumsort[1:25,], by.x="Country", by.y="Country")

maxsort1 <- maxsort[1:20,]

ggplot(dfintersect2, aes(x=Freq, y=mean10,label=Country)) +
  xlab("Number of Cities") + 
  ylab("Average Population") + 
  ggtitle("City Population Distribution")+
  geom_text(aes(label=Country, size=1.8),
            position=position_jitter(width=-100, height=-200)) +
  geom_abline(intercept=1500, slope=110, colour="green", size=1, alpha = I(0.3)) +
  ylim(1500, 7950) + xlim(0, 60) + 
  theme_bw() + theme(legend.position="none")
##Avg Population vs Frequency of Cities

ggplot(df1, aes(x=Longitude, y=Latitude,label=Urban.Agglomeration)) +
  geom_point(shape=1, size=0.3) +
  xlab("Longitude") + 
  ylab("Latitude") + 
  ggtitle("World Population groupings")+
  geom_point(aes(size = pop10, colour = pop10))+
  scale_size_area()+
  scale_colour_gradient(low = "red", high = "yellow")
##World population distribution of large cities

ggplot(maxsort1, aes(x=Country, y=max10)) +
  ggtitle("Countries with the Largest Cities") +
  ylab("City Population") +
  geom_bar(stat="identity", aes(fill=Country)) + coord_flip() +
  theme_bw() + theme(legend.position="none") 
##Bar chart of largest city by country

ggplot(dfintersect2, aes(x=Freq, y=mean10,label=Country)) +
  xlab("Number of Cities") + 
  ylab("Mean Population") + 
  ggtitle("City Population Disparity") +
  geom_point(aes(size = max10, colour = Country)) +
  scale_size_area()
##Scatterplot of City Population disparities
