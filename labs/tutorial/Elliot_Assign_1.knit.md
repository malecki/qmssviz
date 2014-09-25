#Elliot_Assign_1
#Zhongjun Hu(UNI:zh2223)

###Creat a new data.frame named "southern" and select all facilities located in the Southern zones of Nigeria.

```r
setwd("~/Desktop/ZhongjunHuqmssviz/qmssviz/labs/tutorial")
file <- "sample_health_facilities.csv"
sample_data <- read.csv(file)
head(sample_data)
```

```
##           lga lga_id   state          zone c_section_yn
## 1 Barkin-Ladi     91 Plateau North-Central        FALSE
## 2     Anaocha     49 Anambra     Southeast        FALSE
## 3     Batsari     96 Katsina     Northwest        FALSE
## 4        Orlu    611     Imo     Southeast        FALSE
## 5        Guma    258   Benue North-Central        FALSE
## 6    Ayamelum     76 Anambra     Southeast        FALSE
##   num_nurses_fulltime                                           gps
## 1                   0   9.57723376 8.98908176 1285.699951171875 5.0
## 2                   2   6.07903635 7.00366347 276.1000061035156 5.0
## 3                   1  12.91273864 7.31050997 472.3999938964844 5.0
## 4                   0 5.768364071846008 7.061988115310669 241.0 4.0
## 5                   0  7.71806025 8.74342196 147.89999389648438 5.0
## 6                   0  6.481826305389404 6.938955187797546 78.0 6.0
##   num_lab_techs_fulltime management num_doctors_fulltime
## 1                      1     public                    0
## 2                     NA     public                   NA
## 3                      1     public                    0
## 4                      0     public                    0
## 5                      0     public                    0
## 6                      1     public                    1
```

```r
str(sample_data)
```

```
## 'data.frame':	50 obs. of  10 variables:
##  $ lga                   : Factor w/ 50 levels "Aliero","Anaocha",..: 6 2 7 37 17 4 16 25 8 18 ...
##  $ lga_id                : int  91 49 96 611 258 76 232 441 101 261 ...
##  $ state                 : Factor w/ 24 levels "Abia","Adamawa",..: 21 3 14 10 5 3 4 17 6 18 ...
##  $ zone                  : Factor w/ 6 levels "North-Central",..: 1 5 3 5 1 5 2 6 4 1 ...
##  $ c_section_yn          : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
##  $ num_nurses_fulltime   : int  0 2 1 0 0 0 0 1 3 0 ...
##  $ gps                   : Factor w/ 50 levels "10.50716994 7.39845258 633.4000244140625 5.0",..: 48 27 14 24 42 30 7 33 34 47 ...
##  $ num_lab_techs_fulltime: int  1 NA 1 0 0 1 0 0 2 0 ...
##  $ management            : Factor w/ 1 level "public": 1 1 1 1 1 1 1 NA 1 1 ...
##  $ num_doctors_fulltime  : int  0 NA 0 0 0 1 0 1 0 0 ...
```

```r
table(sample_data$zone)
```

```
## 
## North-Central     Northeast     Northwest   South-South     Southeast 
##             7             5            12             9             8 
##     Southwest 
##             9
```

```r
southern<-subset(sample_data,zone%in%c("South-South","Southeast","Southwest"),row.names=FALSE)
southern
```

```
##                  lga lga_id       state        zone c_section_yn
## 2            Anaocha     49     Anambra   Southeast        FALSE
## 4               Orlu    611         Imo   Southeast        FALSE
## 6           Ayamelum     76     Anambra   Southeast        FALSE
## 8             Kosofe    441       Lagos   Southwest         TRUE
## 9            Bekwara    101 Cross River South-South        FALSE
## 11          Ise/Orun    359       Ekiti   Southwest        FALSE
## 15        Ezinihitte    218         Imo   Southeast         TRUE
## 16           Shagamu    671        Ogun   Southwest        FALSE
## 17            Ihiala    312     Anambra   Southeast         TRUE
## 19       Ndokwa-West    523       Delta South-South         TRUE
## 20          Surulere    694       Lagos   Southwest         TRUE
## 27          Ekwusigo    191     Anambra   Southeast         TRUE
## 28     Umuahia North    728        Abia   Southeast         TRUE
## 30             Ogoja    569 Cross River South-South        FALSE
## 31         Ika South    324       Delta South-South        FALSE
## 32       Ehime-Mbano    183         Imo   Southeast        FALSE
## 34            Mushin    516       Lagos   Southwest        FALSE
## 35          Odukpani    559 Cross River South-South        FALSE
## 40 Ogba/Egbema/Ndoni    562      Rivers South-South        FALSE
## 41       Warri South    746       Delta South-South        FALSE
## 43        Remo North    651        Ogun   Southwest         TRUE
## 44       Ijebu North    316        Ogun   Southwest        FALSE
## 46   Atakunmosa West     67        Osun   Southwest        FALSE
## 48        Uhunmwonde    722         Edo South-South        FALSE
## 49          Ifelodun    304        Osun   Southwest         TRUE
## 50     Ughelli South    720       Delta South-South        FALSE
##    num_nurses_fulltime                                            gps
## 2                    2    6.07903635 7.00366347 276.1000061035156 5.0
## 4                    0  5.768364071846008 7.061988115310669 241.0 4.0
## 6                    0   6.481826305389404 6.938955187797546 78.0 6.0
## 8                    1    6.60113991 3.41806628 35.29999923706055 5.0
## 9                    3 6.6513848304748535 8.869051337242126 151.0 4.0
## 11                   2    7.46085228 5.4184795 390.29998779296875 5.0
## 15                   7    5.49070932 7.28365219 165.3000030517578 5.0
## 16                   0     6.69276612 3.49483379 92.4000015258789 5.0
## 17                   2   5.88475837 6.89508114 110.30000305175781 5.0
## 19                   8   5.70480295 6.43165459 34.099998474121094 5.0
## 20                   3   6.49775137 3.35969109 42.400001525878906 5.0
## 27                   0                5.95802932 6.84972263 148.0 5.0
## 28                  NA     5.5224549 7.49361609 175.1999969482422 5.0
## 30                   0   6.477068066596985 8.580247163772583 66.0 4.0
## 31                   1  6.247004270553589 6.134732365608215 178.0 4.0
## 32                   1  5.662475824356079 7.232480049133301 164.0 4.0
## 34                   0                 6.52714249 3.34915425 43.5 5.0
## 35                   0   5.494038462638855 7.967378497123718 38.0 4.0
## 40                   2   5.36041084 6.67822917 30.399999618530273 5.0
## 41                   0    5.5714229 5.70460127 38.400001525878906 5.0
## 43                   0   6.98168426 3.68639208 123.19999694824219 5.0
## 44                   0   6.97047814 3.81543107 102.19999694824219 5.0
## 46                   0   7.52274164 4.62185659 407.20001220703125 5.0
## 48                   0  6.679955720901489 6.085991263389587 306.0 4.0
## 49                   6   7.91940107 4.65994516 421.70001220703125 5.0
## 50                   1   5.37297057 5.91941726 25.200000762939453 5.0
##    num_lab_techs_fulltime management num_doctors_fulltime
## 2                      NA     public                   NA
## 4                       0     public                    0
## 6                       1     public                    1
## 8                       0       <NA>                    1
## 9                       2     public                    0
## 11                      0       <NA>                    1
## 15                      1       <NA>                    0
## 16                      0     public                    0
## 17                      0       <NA>                    1
## 19                      1       <NA>                    2
## 20                      2       <NA>                    3
## 27                      0       <NA>                    1
## 28                     41     public                  308
## 30                      0     public                    0
## 31                      0     public                    0
## 32                      0       <NA>                    0
## 34                      0     public                    0
## 35                      0       <NA>                    0
## 40                      0       <NA>                    2
## 41                      0     public                    0
## 43                      1       <NA>                    2
## 44                      0     public                    0
## 46                      0     public                    0
## 48                      0     public                    0
## 49                      1       <NA>                    1
## 50                      0     public                    0
```
###Download "lgas.csv" and incorporate pop_2006 into my new data.frame "southern"





