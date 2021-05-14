library(dplyr)
df =iris
View(df)
df1 <- mutate(df, p_pw = df$Petal.Width /max(Petal.Width)*100,
              std_pw = Petal.Width - mean(Petal.Width)/sd(Petal.Width)) 

gdf <- group_by(df, Species)
df2 <- mutate(gdf, p_pw = df$Petal.Width /max(Petal.Width)*100,
              std_pw = Petal.Width - mean(Petal.Width)/sd(Petal.Width)) 

d1 = filter(group_by(df,Species), !(Sepal.Length >mean(Sepal.Length)))

