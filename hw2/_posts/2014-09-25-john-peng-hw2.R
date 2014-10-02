setwd('C:/Users/John/Desktop/Data Visualization QMSS')
library(ggplot2)

data1 <- read.csv('lgas.csv')
data2 <- read.csv('qmssviz/labs/tutorial/sample_health_facilities.csv')

zone1 <- data1$zone
levels(zone1)
zone2 <- data2$zone
levels(zone2)
#For both datasets, there are 3 southern zones--South-South, Southeast, and Southwest, 
#so the new data.frame will comprise data for these 3 levels of zone

south.data2 <- subset(data2, zone %in% c("South-South", "Southeast", "Southwest"))
pop.data <- data1[, c('lga_id', 'pop_2006')]


south.data <- merge(pop.data, south.data2, by = "lga_id")

num.nurses <- south.data$num_nurses_fulltime
num.doctors <- south.data$num_doctors_fulltime
num.nurses[is.na(num.nurses)] <- 0
num.doctors[is.na(num.doctors)] <- 0
total.workers <- num.nurses + num.doctors

south.data.workers <- cbind(south.data, total.workers)
#Because the rows for the data are the same, we can use cbind instead of merge.

south.data.bypop <- south.data.workers[order(-south.data.workers$pop_2006),]

ggplot(south.data.bypop, aes(x=pop_2006, y=total.workers)) +
  geom_point(shape=1) +
  ylim(0, 10)

#Removed the outlier from the plot