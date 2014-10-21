rm(list=ls())
library(ggplot2)
library(grid)
library(gridExtra)
library(reshape2)
setwd("~/Documents/Data Visualization/surveys")

gg1 <- function(df, clr){ 
  g1 <- ggplot(data = df, aes(x = QuestionTxt, y = a)) +
    geom_bar(stat = "identity", fill = clr) + ggtitle("1997") +
    theme(axis.title.x = element_blank(), 
          axis.title.y = element_blank(), 
          axis.text.y = element_blank(), 
          axis.ticks.y = element_blank(),
          plot.margin = unit(c(1,-1,1,0), "mm")) +
    scale_y_reverse() + coord_flip() +
    geom_text(aes(label = paste(a, " ", " "," "))) 
  return(ggplotGrob(g1))
}

gg2 <- function(df,clr, resp07){
  g2 <- ggplot(data = df, aes(x = QuestionTxt, y = b)) +xlab(NULL)+
    geom_bar(stat = "identity", fill = clr) + ggtitle("2007") +
    theme(axis.title.x = element_blank(), 
          axis.title.y = element_blank(), 
          axis.text.y = element_blank(), 
          axis.ticks.y = element_blank(),
          plot.margin = unit(c(1,1.5,1,0), "mm")) +
    coord_flip() +
    geom_text(aes(label = paste(" ", " "," ", b))) 
  return(ggplotGrob(g2))
}

ggmid <- function(df, clr){
  g.mid <- ggplot(df, aes(x=1, y=QuestionTxt)) + geom_text(aes(label=QuestionTxt), size=3) +
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
  return(ggplotGrob(g.mid))
}


with_title <- function(st, df, clr){
  return (arrangeGrob(gg1(df, clr),ggmid(df, clr),gg2(df, clr),ncol=3,widths=c(4/10,2/10,4/10)))
}

compare <- function(name, title, clr){
  df <- read.csv(name)
  df <- melt(df, id.vars = c("QuestionTxt", "ReleaseDate"), measure.vars = "RespPct")
  df <- dcast(df, QuestionTxt + ReleaseDate ~ variable)
  df <- dcast(df, QuestionTxt ~ ReleaseDate, value = "ReleaseDate")
  colnames(df)[2] <- "a"
  colnames(df)[3] <- "b" 
  with_title(title, df, clr)
}

a <- compare("10.csv","Things Very Important for Happiness","#FF3300")
b <- compare("7-9.csv","Things Important for Happiness", "#FF6600")
c <- compare("5-6.csv","Things Not Very Important for Happiness","#FF9933")
d <- compare("0-4.csv","Things Not Important for Happiness","#FFFF33")

grid.arrange(a, b, c, d, ncol = 1)


















