#download.file('0Y1UHVwMjhfSEZCVndzeUJZaUduTU15cFRfS29pR2VPTHh5aU5aZC05RFRtbk4zZ3lwODdzNVE0anBUblhyZEw1bjJZMA&q=https%3A%2F%2Fdoi.org%2F10.1371%2Fjournal.pone.0149098.s002',"DatasetLion.csv")
library(dplyr)
df = read.csv("E:\\ikeee\\A_Rtut Important\\R Programs PRac\\Dplyr\\Lion.csv", stringsAsFactors = F)
View(df)
unique(df$Prey.species)

df1 <- filter(df, Prey.species !="Unknown" & nchar(Prey.species) > 0) %>% mutate(Prey.species = tolower(Prey.species)) %>% group_by(Lion.ID,Prey.species) %>% summarise(nb_killed=sum(State..kill..1..or.non.kill..0..)) %>% arrange(desc(nb_killed)) %>% select(Lion =Lion.ID,Prey=Prey.species,Kills=nb_killed)
                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                 
unique(df1$Prey.species)