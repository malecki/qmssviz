rm(list=ls())
library(ggplot2)

setwd("~/Documents/Data Visualization/surveys")
new_10 <- read.csv("10.csv")
tt_10 <- as.character (new_10$RespTxt[1])
new_10 <- melt(new_10, id.vars = c("QuestionTxt", "ReleaseDate"), measure.vars = "RespPct")
library(reshape2)
new_10 <- dcast(new_10, QuestionTxt + ReleaseDate ~ variable)
new_10 <- dcast(new_10, QuestionTxt ~ ReleaseDate, value = "ReleaseDate")
colnames(new_10)[2] <- "a"
colnames(new_10)[3] <- "b"

library(grid)
g.mid <- ggplot(new_10, aes(x=1, y=QuestionTxt)) + geom_text(aes(label=QuestionTxt)) +
         geom_segment(aes(x=0.94, xend=0.96, yend=QuestionTxt)) +
         geom_segment(aes(x=1.04, xend=1.065, yend=QuestionTxt)) +
         ggtitle("")+
         ylab(NULL)+
         scale_x_continuous(expand=c(0,0),limits=c(0.94,1.065))+
         theme(axis.title=element_blank(),
         panel.grid=element_blank(),
         axis.text.y=element_blank(),
         axis.ticks.y=element_blank(),
         panel.background=element_blank(),
         axis.text.x=element_text(color=NA),
         axis.ticks.x=element_line(color=NA),
         plot.margin = unit(c(1,-1,1,-1), "mm"))

g1 <- ggplot(data = new_10, aes(x = QuestionTxt, y = a)) +
      geom_bar(stat = "identity") + ggtitle("Percent of Respondents(1997)") +
      theme(axis.title.x = element_blank(), 
      axis.title.y = element_blank(), 
      axis.text.y = element_blank(), 
      axis.ticks.y = element_blank(),
      plot.margin = unit(c(1,-1,1,0), "mm")) +
      scale_y_reverse() + coord_flip() +
      geom_text(aes(label = paste(a, " ", " "," ")))


g2 <- ggplot(data = new_10, aes(x = QuestionTxt, y = b)) +xlab(NULL)+
      geom_bar(stat = "identity") + ggtitle("Percent of Respondents(2007)") +
      theme(axis.title.x = element_blank(), 
      axis.title.y = element_blank(), 
      axis.text.y = element_blank(), 
      axis.ticks.y = element_blank(),
      plot.margin = unit(c(1,1.5,1,0), "mm")) +
      coord_flip() +
      geom_text(aes(label = paste(" ", " "," ", b)))

library(gridExtra)
gg1 <- ggplot_gtable(ggplot_build(g1))
gg2 <- ggplot_gtable(ggplot_build(g2))
gg.mid <- ggplot_gtable(ggplot_build(g.mid))

grid.arrange(gg1,gg.mid,gg2,ncol=3,widths=c(4/10,2/10,4/10), 
           main=textGrob("Things Most Important for Happiness",gp=gpar(fontsize=20,font=3)))


