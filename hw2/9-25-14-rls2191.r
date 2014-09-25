lgas<-read.csv("labs/tutorial/lgas.csv")
str(lgas)
dim(lgas)

facilities<-read.csv("labs/tutorial/sample_health_facilities.csv")
str(facilities)
dim(facilities)

sample <- facilities[facilities$zone=="South-South" | facilities$zone=="Southeast" | facilities$zone=="Southwest", ]
sample <- merge(sample, lgas, by="lga_id")
sample <- sample[,1:12]
sample$total <- sample$num_doctors_fulltime  + sample$num_nurses_fulltime
sample <- sample[order(-sample$pop_2006),]