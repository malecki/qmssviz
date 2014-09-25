setwd("~/Documents/Uni work/Masters/G4063 Data Viz/qmssviz/Lab")
# Load data from file
d <- read.csv("sample_health_facilities.csv")

# Isolate only southern states into new dataframe 'df'
south <- grep("South", d[,"zone"], fixed = TRUE)
df <- d[south, ]

# Load other dataset
pop <- read.csv("lgas.csv")

# Extract population values and merge
pop06 <- pop[df$lga_id, c("lga_id", "pop_2006")]
df <- merge(df, pop06, by = "lga_id")

# Total number of full-time nurses and doctors for all health facilities in each state
require("plyr")
totmed <- ddply(df, "state", summarise, Doctors = sum(num_doctors_fulltime, na.rm = TRUE), Nurses = sum(num_nurses_fulltime, na.rm = TRUE))

# Calculating State Populations
stpop <- aggregate(pop$pop_2006 ~ pop$state, FUN = sum)
colnames(stpop) <- c("state", "State Pop")

# Merging data
totmed <- join(totmed, stpop, by = "state", type = "left", match = "first")

# Sort by state population
totmed.sort <- totmed[order(totmed[, 4], decreasing = TRUE), ]
totmed.sort
rm(list=ls())
