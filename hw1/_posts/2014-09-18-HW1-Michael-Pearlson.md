---
title: "Homework 1 assignment"
author: mm3940
output: html_document
published: false
tags: hw1
---
###I acquired this data from the package UsingR which includes a long list of data sets that are clean and easily accessible.  I have chosen to use the data set "batting" which includes variables such as homeruns, at bats, RBIs, strikeouts, etc.  The first thing that occured to me was to examine the relationship between homeruns and strikeouts.  

![plot of chunk figure2](figure/figure2.png) 


```r
qplot(SO, HR, data = batting, geom = c("point", "smooth"))
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 


```r
qplot(teamID, HR, data = batting, geom = "boxplot")
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 





========================================================

This is an R Markdown document. Markdown is a simple formatting syntax for authoring web pages (click the **MD** toolbar button for help on Markdown).
