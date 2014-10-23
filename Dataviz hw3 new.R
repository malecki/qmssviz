library(foreign)
data=read.spss(file.choose())
# Create  proportional tables from both data by country
## there are some issues with country labels so I convert
## the variable into a string
data$v2<-as.character(data$v2)
# Create unweighted proportional tables from both datas
tblB <- as.data.frame(prop.table(table(data$v2,data$v235),1)*100)
tbl3 <- tblB[tblB$Var2 %in% c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"),]
tbl3$Var2 <- factor(tbl3$Var2, levels=c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"))
library(reshape2)
orderDat3 <- dcast(tbl3, Var1 ~Var2, value.var="Freq")
tblPlot3 <- melt(orderDat3, id.vars="Var1", measure.vars=c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"))
# And then the plot
## relevelling the levels to match the daulft colors better
tblPlot3$variable <- factor(tblPlot3$variable,levels=c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"))
library(ggplot2)
ggplot(tblPlot3, aes(x=Var1,y=value,fill=variable)) +
geom_bar(stat="identity") +
 coord_flip()
 theme(legend.position="top") +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        legend.text = element_text(size=14))
#wv6
data2=read.spss(file.choose())
# Create  proportional tables from both data by country
## there are some issues with country labels so I convert
## the variable into a string
data2$V2<-as.character(data2$V2)
# Create unweighted proportional tables from both datas
tblC <- as.data.frame(prop.table(table(data2$V2,data$V238),1)*100)
tbl4 <- tblC[tblC$Var2 %in% c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"),]
tbl4$Var2 <- factor(tbl4$Var2, levels=c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"))
library(reshape2)
orderDat4 <- dcast(tbl4, Var1 ~Var2, value.var="Freq")
tblPlot4 <- melt(orderDat4, id.vars="Var1", measure.vars=c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"))
# And then the plot
## relevelling the levels to match the daulft colors better
tblPlot4$variable <- factor(tblPlot4$variable,levels=c("Lower class","Lower middle class","Upper class","Upper middle class","Working class"))
library(ggplot2)
ggplot(tblPlot4, aes(x=Var1,y=value,fill=variable)) +
  geom_bar(stat="identity") +
  coord_flip()
theme(legend.position="top") +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        legend.text = element_text(size=14))
