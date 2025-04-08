
library(datasets)
#Load Data
data(mtcars)
#View first 5 rows
print(head(mtcars, 5))
print(?mtcars)

#load ggplot package
library(ggplot2)
#create a scatterplot of displacement (disp) and miles per gallon (mpg)
print(ggplot(aes(x = disp, y = mpg, ), data = mtcars) + geom_point())

#change axis name
print(ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon"))

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine

print(ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot())

print(ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none"))

#hisgogram of weight
print(ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5))