library(dplyr)
df =iris
View(df)
d1 <- select(df,Species,Sepal.Length)%>% filter(df$Sepal.Length>5.0)
d2 <- select(df,-Species)
d3 <- select(df,Sepal.Length:Petal.Width)
d4 <- select(df,starts_with("P"))