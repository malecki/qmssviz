Title: Ben Lee HW1
published: false
tags: hw1
========================================================
## Dataset: Daily Temperatures from 1995-2013

Read in the data

```r
data <- read.table("C:/Users/blee/Documents/QMSS Fall 2014/DataViz/qmssviz/Lab1/Daily_Temperature_1995-2013_DELHI.txt")
```

Add headers for the columns

```r
colnames(data)<-c("Month", "Day","Year","Temperature")
```

Plot of Daily Temperatures By Month
Cleaned data for plotting. This includes converting date information to the proper DATE format. 

```r
data$Time <- paste(data$Year, data$Month, data$Day, sep="-")
data$Date<-as.Date(data$Time)
```
Added a color scheme for month

```r
colorsch<-data.frame(c(1:12),c(rep(1,3),rep(2,3),rep(3,3),rep(4,3)))
```

## Scatterplot which displays the cyclical nature of temperature

```r
plot(data$Date[data$Temperature!=-99], data$Temperature[data$Temperature!=-99], main="Temperature by Day for 1995-2013",xlab="Date", ylab="Temperature (Fahrenheit)", ylim = c(min(data$Temperature[data$Temperature!=-99]),max(data$Temperature[data$Temperature!=-99]) ), type ="p", pch=20, col = colorsch[data$Month,2])

legend("bottom", legend=c("Jan/Feb/Mar","Apr/May/Jun","Jul/Aug/Sep","Oct/Nov/Dec"), fill=c(1,2,3,4),cex=0.85,horiz=TRUE, bty="n", x.intersp)
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

Scatterplot of average yearly temperature with simple linear regression line
Data Preparation. Removed data from 2013 because it is incomplete. 

```r
avtemp<-tapply(data$Temperature,data$Year, mean)
avtemp<-avtemp[1:18]
tempavg<-data.frame(as.numeric(as.character(names(avtemp))),avtemp)
colnames(tempavg)<-c("Year","AverageTemperature")
```

Table of average temperatures by year

```r
avtemp
```

```
##  1995  1996  1997  1998  1999  2000  2001  2002  2003  2004  2005  2006 
## 76.46 75.75 74.46 73.52 75.51 76.60 75.67 74.97 75.87 77.28 76.56 77.80 
##  2007  2008  2009  2010  2011  2012 
## 73.82 75.72 76.80 76.07 73.98 76.90
```


## Scatterplot which displays average temperature by year and fits a linear regression line
The slope is not statistically significant at even the 10% significance level. This tells us that we cannot reject the null hypothesis that there is no relation between year and temperature. In other words, there is no strong evidence to support a claim that temperature and year are dependent (on average). 

```r
plot(tempavg[,1],tempavg[,2], main="Average Temperature by Year", 
xlab="Year", ylab="Temperature (Fahrenheit)", pch=20)
regmod<-lm(tempavg$AverageTemperature~tempavg$Year)
abline(regmod, col="red")
text(2007, 75.5, "Regression Line:\n y = 75.39678 +0.03855x \n p-value<0.5",
     col="red",cex = .8)
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8.png) 

Regression Line details

```r
summary(regmod)
```

```
## 
## Call:
## lm(formula = tempavg$AverageTemperature ~ tempavg$Year)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -2.0779 -0.6030  0.0878  0.8197  1.9390 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)
## (Intercept)   -1.4648   112.3361   -0.01     0.99
## tempavg$Year   0.0385     0.0561    0.69     0.50
## 
## Residual standard error: 1.23 on 16 degrees of freedom
## Multiple R-squared:  0.0287,	Adjusted R-squared:  -0.032 
## F-statistic: 0.473 on 1 and 16 DF,  p-value: 0.502
```
