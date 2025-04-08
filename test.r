#ggplot test
library(ggplot2)
print(ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point() +ggtitle("Miles
per gallon vs weight") + labs(y="weight", x = "Miles per gallon"))
