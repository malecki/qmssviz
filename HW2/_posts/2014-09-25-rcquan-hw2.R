setwd("~/mailman/qmssviz/hw2/_posts/")

library(plyr)
library(dplyr)

lgas <- read.csv("lgas.csv")
niger <- read.csv("sample_health_facilities.csv")

names(lgas)
names(niger)

## select facilities located in Southern
## zones of Nigeria
unique(niger$zone) # look at different zones
nigerSouth <- niger[niger$zone %in% 
                      c("South-South", "Southeast", "Southwest"), ]
## get pop_2006 column
pop2006 <- lgas[, c("lga_id","pop_2006")]
## merge pop_2006 with southern facilities 
lgasSouth <- join(nigerSouth, pop2006, by = "lga_id")

## caculate total number of full time nurses and doctors
## for all health facilities in each state, 
## sorted by state population
lgasSouth %>%
    group_by(state) %>%
    summarise(num_nurses = sum(num_nurses_fulltime),
              num_doctors = sum(num_doctors_fulltime),
              population = sum(pop_2006)) %>%
    arrange(desc(population))
