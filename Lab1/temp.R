two datasets: Donation-Disease.csv and ChickWeight. The former looks at money raised versus deaths for different diseases, while the latter looks at weight versus age of chickens on different diets.

Let's first look at the Donation-Disease.csv:


```{r,echo=FALSE}

dd <- read.csv("~/qmssviz/Lab1/Donation-Disease.csv")
dd2 <- data.frame(dd)
dim(dd2)
dd2
```


We can graph the association using a scatterplot of log(MoneyRaised) versus log(Death) and then labeling the individual points as different diseases.


```{r, echo=FALSE}

library(ggplot2)


p1 = ggplot(data=dd2, aes(x=log(MoneyRaised), y=log(Death))) + geom_point(stat = "identity", colour = as.numeric(rownames(dd2)),size=10)
p1 + 
#geom_abline(slope=1) +
ylim(8, 14) +
xlim(0, 6) +
geom_text(aes(label=Name), size=3, colour = as.numeric(rownames(dd2)),vjust = 3,
position = position_jitter(width=0, height=0)) +
labs(title = "Money Raised vs Deaths for Different Diseases") +

ylab("Log Deaths") +
xlab("Log Money Raised") 
#scale_colour_gradient(low="black", high="white")


```




Next, we look at ChickWeight, a dataset that comes with R's MASS package. This dataset contains information from an experiment on the effect of diet on early growth of chickens. We'll examine just the first few rows.

```{r, echo=FALSE}
library(MASS)
data(ChickWeight)
dim(ChickWeight)
head(ChickWeight)
```


Let's look at the visualization of this data:
  
  ```{r,echo=FALSE}
p2 = ggplot(data=ChickWeight, aes(x=Time, y=weight)) + geom_point(stat = "identity",colour = ChickWeight$Chick)

p2 + 
  #geom_abline(slope=1) +
  #geom_text(aes(label=Chick), size=3) +
  labs(title = "Weight Versus Age of Chickens on Different Diets") +
  ylab("Weight") +
  xlab("Time")
```






test area for alternate visualization (please ignore)