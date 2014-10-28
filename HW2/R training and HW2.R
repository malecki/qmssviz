load_install<-function(lib){
  if(! require(lib, character.only=TRUE)) install.packages(lib, character.only=TRUE)
  library(lib, character.only=TRUE)
}
Thelib<-c("knitr", "xlsx", "plyr", "ggplot2", "scales", "gdata", "chron", "reshape2", "grid")
##there is a problem installing xlsx. I install it manually. 
lapply(Thelib, load_install)

setwd("D:/Wenjuan Deng/Columbia/2014fall/data visualization/qmssgit/HW2")
source("multiplot.R")
file <- "sample_health_facilities.csv"
sample_data <- read.csv(file)



# Daily mean temperature for Delhi, India 1995-2013 in degrees Farenheit
file <- "Daily_Temperature_1995-2013_Delhi.txt"
temps <- read.table(file, header = FALSE, colClasses = c("factor", "factor", 
                                                         "factor", "numeric"))
names(temps) <- c("Month", "Day", "Year", "Temp")  # assign column names

# reading .xlsx is not native to R, so we need a special package to do it.
# load the library
library(xlsx)

# Population of cities with pop. > 750,000, 1950-2025 (UN 2011)
file <- "UN_2011_Population_Cities_Over_750k.xlsx"
pop <- read.xlsx(file, sheetName = "CITIES-OVER-750K", as.data.frame = TRUE, 
                 header = TRUE, check.names = TRUE, startRow = 13, endRow = 646, colIndex = c(1:23))
# list of countries
file <- "http://download.geonames.org/export/dump/countryInfo.txt"
# list of cities from Hadley Urban Analysis
file <- "http://www.metoffice.gov.uk/hadobs/urban/data/Station_list1.txt"
stns <- read.fwf(file, widths = c(5, 18, 7, 7), header = FALSE, sep = "\t", 
                 skip = 5, strip.white = TRUE)
names(stns) <- c("WMONo", "Stn.name", "Lat", "Long")  # assign column names

data <- temps
head(data)
tail(data)
str(data)

dim(data)
nrow(data)
ncol(data)

data$Date <- as.Date(as.character(paste(data$Year, data$Month, data$Day, sep = "-")), 
                     "%Y-%m-%d")
range(data$Date)  # '1995-01-01' '2013-05-06'

colnames(data)
names(data)
rownames(data)

small_sample <- data[1:10, ]
small_sample[1, ]  # the first row
small_sample[5, ] 

is.na(c(1, 2, 3, NA, 5))

sum(is.na(c(1, 2, 3, NA, 5)))

sum(is.na(data))

# show the NAs in the temperature dataset, if any...
data[which(is.na(data)), ]
# combining these two lines of code: Are there any NA? If so, where?
if (sum(is.na(data)) > 0) data[which(is.na(data)), ] else print("no missing values")

# assign NA to elements in the 'Temp' column with values equal to -99
data$Temp[data$Temp == -99] <- NA

# count how many NA there are now...
sum(is.na(data$Temp))

sum(is.na(data))
# remove them from the data...
data <- na.omit(data)

summary(data$Temp)

hot <- subset(data, Temp > 90)  # days with avg. temp > 90 deg.F.
y95 <- subset(data, Year == "1995")  # days in the year 1995 only 
winter <- subset(data, Month %in% c("12", "1", "2"))  # days contained in winter months
class(hot)
head(hot)

# For more precise subsetting with respect to time, create a date attribute.
# To do so, we combine the year, month, day to create a unique date.
data$Date <- as.Date(as.character(paste(data$Year, data$Month, data$Day, sep = "-")), 
                     "%Y-%m-%d")

# subset data to a one-year period of interest, say, 2012-04-01 to
# 2013-03-31
data <- subset(data, Date > as.Date("2012-03-31") & Date < as.Date("2013-04-01"))

icecream <- data.frame(name = c("Joe", "Jonathan", "Elliot", "Vijay", "Candace"), 
                       icecream = c("vanilla", "chocalate", "coffee", "mint", "cherry"))
color <- data.frame(name = c("Joe", "Jonathan", "Elliot", "Vijay", "Candace"), 
                    color = c("red", "blue", "green", "orange", "purple"))
icecream
color
merge(icecream, color, by = "name")
cbind(icecream, color)
rbind(icecream,color)






