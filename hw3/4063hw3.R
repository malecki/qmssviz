require(plyr)
require(ggplot2)

setwd('/Users/hubei/GoogleDrive/Schoolwork/2014Fall/QMSS4063G/')
dat_online_ttl <- read.table('naes08-online-all-waves-data-compact.txt',sep='\t',header=TRUE)
dat_online_w1 <- read.table('naes08-online-wave-1-data-compact.txt',sep='\t',header=TRUE)
# dat_online_w4 <- read.table('naes08-online-wave-4-data-compact.txt',sep='\t',header=TRUE)
dat_online_w5 <- read.table('naes08-online-wave-5-data-compact.txt',sep='\t',header=TRUE)

dat <- join(dat_online_w1,dat_online_w5,by='RKEY',type = 'inner')


#study favorite of specific person across different wave
fill_bar_favorite <- function(data=dat_online_ttl,
                              group_vars=c('ABo02_1','ABo02_2','ABo02_3','ABo02_4','ABo02_5'),
                              group_vars_name='wave',
                              value_name='fav',
                              group_vars_labels=c('1','2','3','4','5'),
                              titles='Favorite Score Across Five Waves'
){
  ##create ploting data
  plot_fav <-melt(data = data,id.vars=1,measure.vars=group_vars, 
                  value.name='fav',variable.name='wave',na.rm = TRUE)
  plot_fav <- plot_fav[plot_fav$fav>=0 & plot_fav$fav<=100,]
  
  #see distribution
  ggplot(data=plot_fav) + geom_histogram(aes(x = fav,fill=wave),binwidth=5 ,position='fill') +
    theme_bw() + scale_fill_discrete(name=group_vars_name,labels=group_vars_labels) +
    ggtitle(titles) + xlab(value_name)

}
fill_bar_favorite(group_vars=c('AAm01_1','AAm01_2','AAm01_3','AAm01_4','AAm01_5'),
                  titles='Favorite Score Across Five Waves for John McCain')

fill_bar_favorite(titles='Favorite Score Across Five Waves for Barack Obama')


