library(dplyr)
df =iris
View(df)
#arrange
d1 <- arrange(df,desc(Sepal.Length))#,Sepal.Width)
d2 <- arrange(df,desc(Sepal.Length),Sepal.Width)
d3 <- arrange(group_by(df, Species),desc(Sepal.Length),Sepal.Width, .by_group = T)

#summarise
df1 <- summarise(df,mm=mean(Sepal.Length),sdd=sd(Sepal.Length))
df2 <- summarise(group_by(df,Species),mm=mean(Sepal.Length),sdd=sd(Sepal.Length))
unique(df2$Species)