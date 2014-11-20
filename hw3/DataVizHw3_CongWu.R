#load required libraries
library(rMaps)
library(dplyr)
library(countrycode)
library(RColorBrewer)
library(plyr)
library(rCharts)

# loadData function encapusulate loading data process
path = "~/Desktop/qmssviz/hw3/"
  load(paste0(path,"WV5_Data_rdata_v_2014_04_28.rdata"))
  load(paste0(path,"WV6_Data_rdata_v_2014_06_04.rdata"))
  wv5_ccode = read.table(paste0(path,"wv5_ccode.txt"),sep = ",",header = TRUE)
  wv6_ccode = read.table(paste0(path,"wv6_ccode.txt"),sep = ",",header = TRUE)


#select features from survey
selectCol <- function(df,col){
	return df[,col]
}
wv5_col = c("V1","V2","V142")
wv5_col = c("V1","V2","V184")
wv6 = selectCol(WV6_Data_spss_v_2014_06_04,wv6_col)
wv5 = selectCol(WV6_Data_spss_v_2014_04_28,wv5_col)

#renaming columns
names(wv6) <- c("wave", "code", "result")
names(wv5) <- c("wave", "code", "result")

#append country column according to code book 
wv5_ccode$iso3c = countrycode(wv5_ccode[,2],"country.name","iso3c")
wv6_ccode$iso3c = countrycode(wv6_ccode[,2],"country.name","iso3c")

#group the data by country and summarise by mean score 
wv5_agg = ddply(wv5,~code,summarise,wave = mean(wave),mean=mean(result))
wv6_agg = ddply(wv6,~code,summarise,wave = mean(wave),mean=mean(result))

#combine two waves data and deal with missing values
wv5_agg$iso3c = wv5_ccode[wv5_agg$code,"iso3c"]
wv6_agg$iso3c = sapply(wv6_agg$code,function(x){wv6_ccode[wv6_ccode$code==x,"iso3c"]})
data = rbind(wv5_agg,wv6_agg)
data = na.omit(data)
data[with(data,order(iso3c)),]

#plot the graph.  this will generate a html page called index.html. 
#I renamed the page to hw3.html and add some paragraphs to explain the visualiztion
ichoropleth(mean~iso3c,data,pal="Reds",ncuts=5,animate="wave",map="world",legend = TRUE)



