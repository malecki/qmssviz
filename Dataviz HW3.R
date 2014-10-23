library(foreign)
data=read.spss(file.choose())
# Create  proportional tables from both data by country
## there are some issues with country labels so I convert
## the variable into a string
data$v2<-as.character(data$v2)
# Create unweighted proportional tables from both datas
tblA <- as.data.frame(prop.table(table(data$v2,data$v75),1)*100)
tbl2 <- tblA[tblA$Var2 %in% c("Mentioned","Not mentioned"),]
tbl2$Var2 <- factor(tbl2$Var2, levels=c("Mentioned","Not mentioned"))
## To nicely order the plot I will melt the data into wide format, reorder it 
## and convert it back to long format for plotting
library(reshape2)
orderDat <- dcast(tbl2, Var1 ~Var2, value.var="Freq")
orderDat$Var1 <- reorder(orderDat$Var1, orderDat$Mentioned, median)
tblPlot <- melt(orderDat, id.vars="Var1", measure.vars=c("Mentioned","Not mentioned"))
# And then the plot
## relevelling the levels to match the daulft colors better
tblPlot$variable <- factor(tblPlot$variable, 
                           levels=c("Mentioned","Not mentioned"))
library(ggplot2)
ggplot(tblPlot, aes(x=Var1,y=value,fill=variable)) +
  geom_bar(stat="identity") +
  coord_flip() + 
  theme(legend.position="top") +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        legend.text = element_text(size=14))
