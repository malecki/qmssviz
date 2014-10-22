setwd("/Users/Evelyn/Desktop/hw3")
library(foreign)
survey1 <- read.dta("ZA3777_v3-0-1.dta")
survey2 <- read.dta("ZA4752_v1-0-0.dta")

str(survey1$v68)
table(survey1$v68)
sum(is.na(survey1$v68))
str(survey2$v66)
table(survey2$v66)
sum(is.na(survey2$v66))

str(survey1$v296)
summary(survey1$v296)
str(survey2$v313)
summary(survey2$v313)

survey1_sub <- survey1[c("v68","v296")]
survey2_sub <- survey2[c("v66","v313")]
survey1_sub <- na.omit(survey1_sub)
survey2_sub <- na.omit(survey2_sub)
levels(survey2_sub$v313) <- c(levels(survey2_sub$v313), "never married")
survey2_sub$v313[survey2_sub$v313=="never married or registered partnership"] <-"never married"
survey2_sub$v313[survey2_sub$v313=="registered partnership"] <-"never married"
survey1_sub$v296 <- as.factor(as.character(survey1_sub$v296))
survey2_sub$v313 <- as.factor(as.character(survey2_sub$v313))

survey1_sub$year <- "1999"
survey2_sub$year <- "2008"
colnames(survey1_sub) <- c("rating", "marriage_status", "year")
colnames(survey2_sub) <- c("rating", "marriage_status", "year")
combined_data <- rbind(survey1_sub, survey2_sub)
