library(ggplot2)
poke <- read.csv("E:\\ikeee\\A_Rtut Important\\R Programs PRac\\datasets\\pokemon.csv")
View(poke)

# toget noof rows and col
nrow(poke)
ncol(poke)

# uSING Table 
table(poke$is_legendary)
table(poke$type1)
table(poke$type2)
table(poke$generation)
# min-max
min(poke$hp)
max(poke$hp)

min(poke$speed)
max(poke$speed)

#to find Null Values
is.na(poke$abilities)
sum(is.na(poke$abilities))
# changing column name
colnames(poke)[colnames(poke)=='type1'] <- "PrimType"
colnames(poke)[colnames(poke)=='type2'] <- "SecoType"
colnames(poke)[colnames(poke)=='name'] <- "Poke_name"
#Analysis on Pokemon
poke %>% filter(poke$PrimType=='grass') ->Grass_Poke
min(Grass_Poke$speed)
max(Grass_Poke$speed)

mean(Grass_Poke$sp_attack)
mean(Grass_Poke$sp_defense)

#doing analysis using ggplot GRASSSTYPE
ggplot(data = Grass_Poke,aes(x=hp))+geom_histogram()
ggplot(data = Grass_Poke,aes(x=hp))+geom_histogram(fill='palegreen4')

#variation of parameters wrt pokemon
ggplot(data = Grass_Poke,aes(x=height_m))+geom_histogram()
ggplot(data = Grass_Poke,aes(x=weight_kg))+geom_histogram(fill='palegreen4')

ggplot(data = Grass_Poke,aes(x=is_legendary))+geom_bar(fill='palegreen4')

#doing analysis using ggplot FIREETYPE

poke %>% filter(poke$PrimType=='fire') ->Fire_Poke
min(Fire_Poke$speed)
max(Fire_Poke$speed)

mean(Fire_Poke$sp_attack)
mean(Fire_Poke$sp_defense)

#variation of parameters wrt pokemon fire
ggplot(data = Fire_Poke,aes(x=height_m,y=weight_kg))+geom_point()
ggplot(data = Fire_Poke,aes(x=weight_kg,y=speed,fill=height_m))+geom_point()

ggplot(data = Fire_Poke,aes(x=sp_attack,y=sp_defense,fill=hp))+geom_point()

#doing analysis using ggplot WaterTYPE

poke %>% filter(poke$PrimType=='water') ->Water_Poke
min(Water_Poke$speed)
max(Water_Poke$speed)

mean(Water_Poke$sp_attack)
mean(Water_Poke$sp_defense)
#variation of parameters wrt pokemon fire
ggplot(data = Water_Poke,aes(x=against_fire))+geom_histogram()
ggplot(data = Water_Poke,aes(x=against_poison))+geom_histogram()
ggplot(data = Water_Poke,aes(x=against_ice))+geom_histogram()

#doing analysis using ggplot PsysicTYPE

poke %>% filter(poke$PrimType=='psychic') ->Psychic_Poke
min(Psychic_Poke$speed)
max(Psychic_Poke$speed)

mean(Psychic_Poke$sp_attack)
mean(Psychic_Poke$sp_defense)
#variation of parameters wrt pokemon fire
ggplot(data = Psychic_Poke,aes(x=base_total))+geom_histogram()
ggplot(data = Psychic_Poke,aes(x=as.factor(generation),y=sp_defense))+geom_boxplot(fill='blue')
ggplot(data = Psychic_Poke,aes(x=is_legendary))+geom_bar()




