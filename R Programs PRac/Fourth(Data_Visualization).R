#Data Visualization using ggplot2 on diamond 
library(ggplot2)
View(diamonds)

# Histogram
ggplot(data = diamonds)
ggplot(data = diamonds, aes(x=price))+ geom_histogram( fill='green',col='orange')

# Barplot
ggplot(data = diamonds)
ggplot(data = diamonds, aes(x=cut))+ geom_bar(fill="palegreen4",col="red")
ggplot(data = diamonds, aes(x=cut, fill=cut))+ geom_bar()

# Scatter Plot
ggplot(data = diamonds)
ggplot(data = diamonds, aes(x=carat,y=price,col=cut))+ geom_point()
ggplot(data = diamonds, aes(x=carat,y=price,fill=cut))+ geom_point()

# BoxPlot
ggplot(data = diamonds)
ggplot(data = diamonds, aes(x=carat,y=price,col=cut))+ geom_boxplot()
ggplot(data = diamonds, aes(x=carat,y=price,fill=cut))+ geom_boxplot()
ggplot(data = diamonds, aes(x=carat,y=price,col=cut))+ geom_boxplot()+facet_grid()