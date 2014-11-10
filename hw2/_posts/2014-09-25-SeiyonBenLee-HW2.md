Title: Ben Lee R-Tutorial Assignment
published: false
tags: hw2 sdfsdf
========================================================
Load in Data

```r
dat<-read.csv("C:/Users/blee/Documents/QMSS Fall 2014/DataViz/qmssviz/Lab1/lgas.csv",header = TRUE)
```



From the Nigeria Facilities Inventory data (`sample_data` from section 1.5.1),select all facilities located in the Southern zones of Nigeria.  


```r
fac <- read.csv("C:/Users/blee/Documents/QMSS Fall 2014/DataViz/qmssviz/Lab1/sample_health_facilities.csv", header=TRUE)
```

Incorporate the pop2006 column from the `lgas.csv` file into the new data.frame containing only those facilities located in Southern Nigeria. (Hint: your id column is `lga_id`). 

Choose zones in the South of Nigeria

```r
levels(fac$zone)
```

```
## [1] "North-Central" "Northeast"     "Northwest"     "South-South"  
## [5] "Southeast"     "Southwest"
```

```r
facsouth<-fac[fac$zone %in% c("South-South","Southeast","Southwest"),]
```
Create and abridged dataframe and merge the results

```r
pop2006dat<- dat[,c(1,3)] # Create abridged data frame
mergefacsouth<-merge(facsouth, pop2006dat, by = "lga_id") # Merge the results
```

Calculate the total number of full time nurses and doctors for all health facilities in each state.  
Create a data frame for total nurses by state

```r
nursestate<-aggregate(mergefacsouth$num_nurses_fulltime, by=list(mergefacsouth$state), sum, na.rm=TRUE)
colnames(nursestate)<-c("State","Nurses")
```

Create a data frame for total nurses by state

```r
docstate<-aggregate(mergefacsouth$num_doctors_fulltime, by=list(mergefacsouth$state), sum, na.rm=TRUE)
colnames(docstate)<-c("State","Doctors")
```
Merge the results

```r
nursedocstate<-merge(nursestate, docstate, by = "State") # Merge the results
```


Sort the resulting dataset by state population, in descending order.  

Append 2006 Population to previous dataframe

```r
totpop2006state<-aggregate(dat$pop_2006, by=list(dat$state), sum, na.rm=TRUE)
colnames(totpop2006state)<-c("State","Pop2006")
finaldat<-merge(nursedocstate, totpop2006state, by = "State") # Merge the results
```

Sort the final dataframe

```r
order(finaldat$Pop2006, decreasing=TRUE)
```

```
##  [1]  8 11  2  4  7  9 10  5  3  1  6
```

Show the results!  

```r
finaldat[order(finaldat$Pop2006, decreasing=TRUE),]
```

```
##          State Nurses Doctors Pop2006
## 8        Lagos      4       4 9013534
## 11      Rivers      2       2 5185400
## 2      Anambra      4       3 4182032
## 4        Delta     10       2 4098391
## 7          Imo      8       0 3934899
## 9         Ogun      0       2 3728098
## 10        Osun      6       1 3423535
## 5          Edo      0       0 3218332
## 3  Cross River      3       0 2856581
## 1         Abia      0     308 2833999
## 6        Ekiti      2       1 2384212
```
