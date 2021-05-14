library(dplyr)
df =iris
View(df)
df1 = group_by(df,Species)
summarise(df1, mym = mean(Sepal.Length))
df2 = group_by(df1,Species,Sepal.Length < 6)
summarise(df2, mym = mean(Sepal.Length))

df3 = ungroup(df2)
summarise(df3, mym = mean(Sepal.Length))
