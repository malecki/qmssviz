Title: "Homework 2 Assignment"
author: Andy Tang, awt2118
output: html_document
published: false
tags: hw2
========================================================



```r
setwd("/Users/awtang/Desktop/qmssviz/qmssviz/hw2")
lgas <- read.csv("lgas.csv", stringsAsFactors = F)
nigeria <- read.csv("sample_health_facilities.csv", stringsAsFactors = F)
```



```r
head(nigeria$zone)
```

```
## [1] "North-Central" "Southeast"     "Northwest"     "Southeast"    
## [5] "North-Central" "Southeast"
```

```r
south <- subset(nigeria, zone %in% c("South-South", "Southeast", "Southwest"))
```




```r
lgaspop2006 <- lgas[, c("lga_id", "pop_2006")]
southpop2006 <- merge(south, lgaspop2006, by = "lga_id")
```




```r
doctors = aggregate(data = southpop2006, num_doctors_fulltime ~ state, FUN = sum)
nurses = aggregate(data = southpop2006, num_nurses_fulltime ~ state, FUN = sum)
```



```r
attach(southpop2006)
orderedpop <- southpop2006[order(-pop_2006), ]
detach(southpop2006)
```



```r
print(doctors)
```

```
##          state num_doctors_fulltime
## 1         Abia                  308
## 2      Anambra                    3
## 3  Cross River                    0
## 4        Delta                    2
## 5          Edo                    0
## 6        Ekiti                    1
## 7          Imo                    0
## 8        Lagos                    4
## 9         Ogun                    2
## 10        Osun                    1
## 11      Rivers                    2
```

```r
print(nurses)
```

```
##          state num_nurses_fulltime
## 1      Anambra                   4
## 2  Cross River                   3
## 3        Delta                  10
## 4          Edo                   0
## 5        Ekiti                   2
## 6          Imo                   8
## 7        Lagos                   4
## 8         Ogun                   0
## 9         Osun                   6
## 10      Rivers                   2
```

```r
print(orderedpop)
```

```
##    lga_id               lga       state        zone c_section_yn
## 13    441            Kosofe       Lagos   Southwest         TRUE
## 14    516            Mushin       Lagos   Southwest        FALSE
## 22    694          Surulere       Lagos   Southwest         TRUE
## 26    746       Warri South       Delta South-South        FALSE
## 9     312            Ihiala     Anambra   Southeast         TRUE
## 1      49           Anaocha     Anambra   Southeast        FALSE
## 10    316       Ijebu North        Ogun   Southwest        FALSE
## 17    562 Ogba/Egbema/Ndoni      Rivers South-South        FALSE
## 21    671           Shagamu        Ogun   Southwest        FALSE
## 25    728     Umuahia North        Abia   Southeast         TRUE
## 23    720     Ughelli South       Delta South-South        FALSE
## 16    559          Odukpani Cross River South-South        FALSE
## 18    569             Ogoja Cross River South-South        FALSE
## 7     218        Ezinihitte         Imo   Southeast         TRUE
## 11    324         Ika South       Delta South-South        FALSE
## 3      76          Ayamelum     Anambra   Southeast        FALSE
## 6     191          Ekwusigo     Anambra   Southeast         TRUE
## 15    523       Ndokwa-West       Delta South-South         TRUE
## 19    611              Orlu         Imo   Southeast        FALSE
## 5     183       Ehime-Mbano         Imo   Southeast        FALSE
## 24    722        Uhunmwonde         Edo South-South        FALSE
## 12    359          Ise/Orun       Ekiti   Southwest        FALSE
## 4     101           Bekwara Cross River South-South        FALSE
## 8     304          Ifelodun        Osun   Southwest         TRUE
## 2      67   Atakunmosa West        Osun   Southwest        FALSE
## 20    651        Remo North        Ogun   Southwest         TRUE
##    num_nurses_fulltime                                            gps
## 13                   1    6.60113991 3.41806628 35.29999923706055 5.0
## 14                   0                 6.52714249 3.34915425 43.5 5.0
## 22                   3   6.49775137 3.35969109 42.400001525878906 5.0
## 26                   0    5.5714229 5.70460127 38.400001525878906 5.0
## 9                    2   5.88475837 6.89508114 110.30000305175781 5.0
## 1                    2    6.07903635 7.00366347 276.1000061035156 5.0
## 10                   0   6.97047814 3.81543107 102.19999694824219 5.0
## 17                   2   5.36041084 6.67822917 30.399999618530273 5.0
## 21                   0     6.69276612 3.49483379 92.4000015258789 5.0
## 25                  NA     5.5224549 7.49361609 175.1999969482422 5.0
## 23                   1   5.37297057 5.91941726 25.200000762939453 5.0
## 16                   0   5.494038462638855 7.967378497123718 38.0 4.0
## 18                   0   6.477068066596985 8.580247163772583 66.0 4.0
## 7                    7    5.49070932 7.28365219 165.3000030517578 5.0
## 11                   1  6.247004270553589 6.134732365608215 178.0 4.0
## 3                    0   6.481826305389404 6.938955187797546 78.0 6.0
## 6                    0                5.95802932 6.84972263 148.0 5.0
## 15                   8   5.70480295 6.43165459 34.099998474121094 5.0
## 19                   0  5.768364071846008 7.061988115310669 241.0 4.0
## 5                    1  5.662475824356079 7.232480049133301 164.0 4.0
## 24                   0  6.679955720901489 6.085991263389587 306.0 4.0
## 12                   2    7.46085228 5.4184795 390.29998779296875 5.0
## 4                    3 6.6513848304748535 8.869051337242126 151.0 4.0
## 8                    6   7.91940107 4.65994516 421.70001220703125 5.0
## 2                    0   7.52274164 4.62185659 407.20001220703125 5.0
## 20                   0   6.98168426 3.68639208 123.19999694824219 5.0
##    num_lab_techs_fulltime management num_doctors_fulltime pop_2006
## 13                      0       <NA>                    1   665393
## 14                      0     public                    0   633009
## 22                      2       <NA>                    3   503975
## 26                      0     public                    0   303417
## 9                       0       <NA>                    1   302158
## 1                      NA     public                   NA   285002
## 10                      0     public                    0   284336
## 17                      0       <NA>                    2   284010
## 21                      0     public                    0   253412
## 25                     41     public                  308   220660
## 23                      0     public                    0   213576
## 16                      0       <NA>                    0   192444
## 18                      0     public                    0   171901
## 7                       1       <NA>                    0   165593
## 11                      0     public                    0   162594
## 3                       1     public                    1   158410
## 6                       0       <NA>                    1   158231
## 15                      1       <NA>                    2   149325
## 19                      0     public                    0   142717
## 5                       0       <NA>                    0   130931
## 24                      0     public                    0   120813
## 12                      0       <NA>                    1   113754
## 4                       2     public                    0   105822
## 8                       1       <NA>                    1    96748
## 2                       0     public                    0    68643
## 20                      1       <NA>                    2    59911
```


