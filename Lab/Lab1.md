---
title: "R Basics"
author: "Yang Yang"
---

R Basics 
========================================================

Brief intro of RStudio, an integrated development environment (IDE)
-------------------------

Anything following a # is a comment


```r
# This is a comment, which is not executed.
# You can take notes this way, e.g.Commom dataset structure:each variable is a column, each observation is a row, and each type of observational unit is a table. 
```

R as a calculator
-------------------------

#### Basic Math

```r
1+1
```

```
## [1] 2
```

```r
4/2*3
```

```
## [1] 6
```


#### R follows the order of operations PEMDAS Parenthesis Exponents Multiplication Division Addition Subtraction

```r
4/(2*3)
```

```
## [1] 0.6667
```

#### R has built in math functions 

```r
sqrt(4)
```

```
## [1] 2
```



Assign a variable
-------------------------

```r
a<-1
b<-2   ## you can also try b=2, which is another way of assigning a variable, but arrow is generally preferred
c<-a+b 
```


```r
c
```

```
## [1] 3
```


#### R is case sensitive

```r
A<-10
```


```r
A
```

```
## [1] 10
```

```r
a    ##remember, R is case sensitive! 
```

```
## [1] 1
```

#### Remove objects 

```r
ls()  # R stores both data and data analysis output as objects. ls() returns a list of all objects in the current session
```

```
## [1] "a" "A" "b" "c"
```

```r
rm(a) 
a
```

```
## Error: object 'a' not found
```



Vectors
----------------------------------------

#### Create vectors *Note: R is case sensitive*

```r
A<-c(1,2,3,4,5)  ##Overwrite an object by assigning it something new
A
```

```
## [1] 1 2 3 4 5
```

```r
B<-1:5; B #Commands are separated either by a ; or by a newline
```

```
## [1] 1 2 3 4 5
```

```r
C<-c(1,2,4,3,5); C
```

```
## [1] 1 2 4 3 5
```


#### Logical (hints for vector operations)

```r
A<2
```

```
## [1]  TRUE FALSE FALSE FALSE FALSE
```

```r
##check length
length(A); length(B)
```

```
## [1] 5
```

```
## [1] 5
```

```r
A==B
```

```
## [1] TRUE TRUE TRUE TRUE TRUE
```

```r
A==C
```

```
## [1]  TRUE  TRUE FALSE FALSE  TRUE
```

```r
A!=5
```

```
## [1]  TRUE  TRUE  TRUE  TRUE FALSE
```


#### Vector Operations

```r
# add 1 to every element
A+1
```

```
## [1] 2 3 4 5 6
```

```r
# multiplty 2 to every element
A*2
```

```
## [1]  2  4  6  8 10
```

```r
# raise every element to second power
A^2
```

```
## [1]  1  4  9 16 25
```


#### More on Vector Operations (for vectors have the same length)

```r
# +, -, *, /
A+B
```

```
## [1]  2  4  6  8 10
```

```r
A/B 
```

```
## [1] 1 1 1 1 1
```



```r
##get a specific element from vector A
A[3]
```

```
## [1] 3
```

```r
##remove a specific element from vector A
A[-1]
```

```
## [1] 2 3 4 5
```

```r
D<-A[-1]
D
```

```
## [1] 2 3 4 5
```

```r
length(D)
```

```
## [1] 4
```


Introduction to data types and data.frame 
----------------------------------------

#### Set working directory and read dataset
It should be your own working directory in "..."; if you are using a R script, you should be fine to do as following two steps to read data: set working directory and read dataset


```r
#setwd("/Users/timz/Downloads")
#demo<-read.csv("Donation-Disease.csv",stringsAsFactors=F)
```

#### read.table and read.csv can read data stored as text files, delimited by nearly everything, e.g. comma delimited and tab delimited. 


```r
# give dataset a name as a R dataframe object 
demo<-read.csv("Donation-Disease.csv",stringsAsFactors=F)
```



```r
# class of demo
class(demo) # data frames have a matrix structure. Obs are arranged as rows and columns
```

```
## [1] "data.frame"
```

```r
# Look at the dataset 
head(demo)
```

```
##              Name                     Description MoneyRaised  Death
## 1   Heart Disease             Jump Rope for Heart        54.1 596577
## 2         Suicide  Out of Darkness Overnight Walk         3.2  39518
## 3   Breast Cancer         Komen Race for the Cure       257.9  41374
## 4        Diabetes Step Out: Walk to Stop Diabetes         4.2  73831
## 5        HIV/AIDS                Ride to End Aids        14.0   7683
## 6 Prostate Cancer                        Movember       147.0  21176
```

```r
# dimensions of demo
dim(demo)   #output: row column
```

```
## [1] 8 4
```

```r
# structure of demo, including data types for variables
str(demo)
```

```
## 'data.frame':	8 obs. of  4 variables:
##  $ Name       : chr  "Heart Disease" "Suicide" "Breast Cancer" "Diabetes" ...
##  $ Description: chr  "Jump Rope for Heart" "Out of Darkness Overnight Walk" "Komen Race for the Cure" "Step Out: Walk to Stop Diabetes" ...
##  $ MoneyRaised: num  54.1 3.2 257.9 4.2 14 ...
##  $ Death      : int  596577 39518 41374 73831 7683 21176 6849 142942
```

```r
# summary demo, returns distributional summaries of variables in the dataset
summary(demo)
```

```
##      Name           Description         MoneyRaised        Death       
##  Length:8           Length:8           Min.   :  3.2   Min.   :  6849  
##  Class :character   Class :character   1st Qu.:  6.3   1st Qu.: 17803  
##  Mode  :character   Mode  :character   Median : 18.4   Median : 40446  
##                                        Mean   : 63.8   Mean   :116244  
##                                        3rd Qu.: 77.3   3rd Qu.: 91109  
##                                        Max.   :257.9   Max.   :596577
```

```r
# indexing rows, columns and cells in a dataframe
# object[row,column]
demo[1,1]
```

```
## [1] "Heart Disease"
```

#### indexing rows, columns and cells in a dataframe. 
* object[row,column] 
* object$column.name

```r
# 
demo[1,1]
```

```
## [1] "Heart Disease"
```

```r
demo$Name
```

```
## [1] "Heart Disease"                        
## [2] "Suicide"                              
## [3] "Breast Cancer"                        
## [4] "Diabetes"                             
## [5] "HIV/AIDS"                             
## [6] "Prostate Cancer"                      
## [7] "Motor Neuron Disease (including ALS)" 
## [8] "Chronic Obstructive Pulmonary Disease"
```
Install R Packages
----------------------------------------
#### To use packages in R, we must first install them using install.packages function, which downloads the packages from CRAN. 
You just need to install a package once for your RStudio, you only need to call this package in the future. 


```r
# install.packages("ggplot2") #package for elegant data visualization using the Grammar of Graphics
library(ggplot2)
?ggplot #Get R on-line help 

ggplot(demo, aes(x=MoneyRaised, y=Death)) +
    geom_point(shape=1) 
```

![plot of chunk unnamed-chunk-19](figure/unnamed-chunk-19.png) 

Brief intro R Markdown
-------------------------


Wrap-up:
-------------------------
#### * Always remember to check working directory getwd() or set the right working directory setwd()
#### * Use on-line help, get used to read tutorials on CRAN; also Google and Stack Overflow
#### * Define meaningful&easy names for datasets and variables, remember R is case sensitive
#### * Practice and create your own cheatsheet 
#### * Quiz: To read dataset from other statistical analysis software, like Stata and SPSS, what packages shall we use? 

Useful Resources:
-------------------------
R basic: http://cran.r-project.org/manuals.html
R for Beginners
R in a Nutshell
Quick R: http://www.statmethods.net/
Data Analysis Examples with R: http://www.ats.ucla.edu/stat/dae/



