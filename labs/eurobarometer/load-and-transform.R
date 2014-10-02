library(foreign)

eb41 <- read.dta('eb41.dta')
eb411 <- read.dta('eb411.dta')

## GOAL: datasets that look the same and contain
## the variables we want to compare. 

## What are the variables in each?

str(eb41$V37)
table(eb41$V37)
sum(is.na(eb41$V37))

str(eb411$V54)
table(eb411$V54)
sum(is.na(eb411$V54))

## How are they coded in each?
lapply(attributes(eb41), length)
table(attr(eb41,'types'))
names(attr(eb41,'label.table')[[37]])
attr(eb41,'label.table')[[37]]

## How do we want them to look? 
d$nationalSatisfaction # probably logical; could keep a -2 to 2 scale?
d$country # factor
#(etc)

## In all cases, document every transformation you make.
## The best documentation is a self-documenting function.

loadAndTransform41 <- function(file){
  d <- read.dta(file)
  d
}

transform41 <- function(d){
  d
}

transform411 <- function(d){
  recodeNAs <- function(col){
    d
  }
  d <- recodeNAs(d)
  return(d)
}

transform <- function(d, num="41"){
  do.call(paste0('transform', num), d)
}


eb41 <- read.dta('eb41.dta')
data41 <- transform(eb41, 41)
data411 <- transform(read.dta('eb411.dta'), 411)

getCorrelation <- function(df){
  cor(df$nationalSatisfaction, df$europeanSatisfaction,
      use='complete.obs')
}
# proportion satisfied, by country
getProportionSatisfied <- function(df){
  data.frame(n=mean(df$n, na.rm=T),
             e=mean(df$europeanSatisfaction, na.rm=T))
}
aggregates <- ddply(data41, .(country), getProportionSatisfied)
cor(aggregates$n, aggregates$e) ## the first line in the table






# 37, 84, c=5, wt=14
# 54, 55, c=5, wt=14
# 