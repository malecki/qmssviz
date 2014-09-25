lgas<-read.csv("labs/tutorial/lgas.csv")
str(lgas)
dim(lgas)

facilities<-read.csv("labs/tutorial/sample_health_facilities.csv")
str(facilities)
dim(facilities)

sample <- facilities[facilities$zone=="South-South" | facilities$zone=="Southeast" | facilities$zone=="Southwest", ]
sample2 <- merge(sample, lgas, by="lga_id")
