---
title: "hw1 huzhongjun"
author: "Zhongjun Hu"
date: "2014<U+5E74>9<U+6708>17<U+65E5>"
output: html_document
---
# HW1
## HU

```r
library(ggplot2)
```
Donation-Disease:

```r
setwd("~/Desktop/ZhongjunHuqmssviz/qmssviz/Lab1")
d <-read.csv("Donation-Disease.csv")
d$Death<-as.numeric(d$Death)
d$Death<-d$Death/1000
qplot(data=d,x = MoneyRaised,y=Death,color=Name)
```

<img src="./2014-09-18-Zhongjun-Hu_files/figure-html/unnamed-chunk-2.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" width="672" />

```r
ggplot
```

```
## function (data = NULL, ...) 
## UseMethod("ggplot")
## <environment: namespace:ggplot2>
```

UN population
(I noticed a very nice pic from one of our classmates and wanted to try it, but failed.His plot is way way way better than mine)



