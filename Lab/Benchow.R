demo <- read.csv("Donation-Disease.csv", stringsAsFactor=F)
# Playing with the dataframe
# Displays whole dataframe
demo

# Compute dimensions of dataframe
dim(demo)

# Summary statistics of dataframe
str(demo)
summary(demo)

# Accessing individual entries, rows or columns
demo[2,2]
demo[,3]
demo["MoneyRaised"]
demo$MoneyRaised
demo$MoneyRaised[2]

# Using ggplot2
require(ggplot2)
??ggplot
?qplot
qplot(demo$Death, demo$MoneyRaised,
      xlab = "Number of Deaths",
      ylab = "Amount of Money Raised",
      main = "Diseases: Deaths versus Money Raised",
      col = "beige")

d <- ggplot(demo, aes(x=MoneyRaised, y=Death)) + geom_point() + ylab("Deaths") + xlab("Money Raised in $'000s")
d

?InsectSprays
InsectSprays
IS <- InsectSprays
groups <- aggregate(IS$count ~ IS$spray, FUN = "mean")
groups
require(RColorBrewer)
color <- brewer.pal(11, "RdYlGn")
ggplot(IS, aes(x=count)) + geom_histogram(binwidth = 3, fill = color) + xlab("Number of bugs killed")
ggplot(data = IS, aes(x = count, fill = spray)) + geom_dotplot(binwidth = 1, dotsize = 0.9, stackdir = "centerwhole") + xlab("No. of bugs killed") + scale_y_continuous(name="Spray Count", breaks = NULL) + ggtitle("Sprays vs Bugs")
