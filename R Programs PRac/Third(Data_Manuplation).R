library(dplyr)
laptop <- read.csv("E:\\ikeee\\A_Rtut Important\\R Programs PRac\\datasets\\laptops.csv")
head(laptop,10)
#print(laptop)
#select Function 
laptop %>% select(Manufacturer,Screen.Size,Screen) -> laptop_sel
laptop %>% select(Manufacturer,Model.Name,Screen) -> laptop_sel2
laptop %>% select(ends_with("e")) -> laptop_q
laptop %>% select(starts_with("P")) -> laptop_P

#filter Function
laptop %>% filter(Manufacturer =="Apple" & Screen.Size>15) -> laptop_flt

#combined Both

laptop %>% select(Manufacturer,Model.Name,Screen)%>% filter(Manufacturer =="Apple" ) -> laptop_com



