setwd("/Users/elizabethmulvey/qmssviz/hw3")

load('WV5_Data_rdata_v_2014_04_28_2.rdata')
load('WV6_Data_rdata_v_2014_06_04.rdata')
d <- WV5_Data_spss_v_2014_04_28
d2 <- WV6_Data_spss_v_2014_06_04

subsetd<-subset(d, V2A== 840 | V2A== 484)

require(ggplot2)

                
bar1 <- ggplot(subsetd, aes(x=V68, xlab= "Countries")) + 
  geom_histogram(binwidth=1, color="white", fill="blue") + 
  coord_cartesian(xlim=c(0,10)) +
  xlab("Countries (Mexico and the U.S.)") + ggtitle("Financial Satisfaction on a Scale from 0 to 10") 
bar1
bar1 + facet_grid(. ~ V2)


density1 <- ggplot(data = subsetd, aes(x = V68, col=V2)) + geom_density(aes(group = V2, color=V2)) + ggtitle("Financial Satisfaction 2005-2009: Mexico (dark blue) v. US (light blue)")  + xlab("0= Dissatisfied, 10=Satisfied")   
density1



subsetd2<-subset(d2, V2A== 840 | V2A== 484)


bar2 <- ggplot(subsetd2, aes(x=V59, xlab= "Countries")) + 
  geom_bar(binwidth=1, color="white", fill="green") + 
  coord_cartesian(xlim=c(0,10)) +
  xlab("Countries (Mexico and the U.S.)") + ggtitle("Financial Satisfaction: 2010-2014)") 
bar2
bar2 + facet_grid(. ~ V2)

density2 <- ggplot(data = subsetd2, aes(x = V59, col=V2)) + geom_density(aes(group = V2, color=V2)) + ggtitle("Financial Satisfaction 2010-2014: Mexico (dark blue) v. US (light blue)")  + xlab("0= Dissatisfied, 10=Satisfied")    
density2


