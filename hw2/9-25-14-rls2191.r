##load data
lgas<-read.csv("labs/tutorial/lgas.csv")
facilities<-read.csv("labs/tutorial/sample_health_facilities.csv")

##make sample dframe of southern facilities from facilities file
sample <- facilities[facilities$zone=="South-South" | facilities$zone=="Southeast" | facilities$zone=="Southwest", ]

#merge with lgas data for those facilities
sample <- merge(sample, lgas, by="lga_id")

#sort by state population, print table
library(plyr)
states<-ddply(sample, .(state.x), numcolwise(sum))
states<-states[, -2]
states[order(-states$pop_2006), ]
