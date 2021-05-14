a=1+2
b <- 22-9
c="devesh Shetty"
dev = TRUE
dee="Devesh is\"g00od"

#factor

myfacto <- as.factor(c("Good","Bad","evil"))

#vector
vec1=c(1,2,2,23,0.2)
print(vec1)

vec2 = c(F,T,FALSE,T,TRUE)
print(vec2)

vec3 = c("H1","H2","H3",".......","23455")
print(vec3[-(1:2)])

vec4 = as.factor(c("male","female","male","female"))

vec5 = c("H1","H2","H3",TRUE,F,T)
vec5 = c(3,5,10,9,TRUE,F,T)
#list

k <- list(vec1,vec2,vec3)
print(k)

k2 <- list(vec1,vec2,vec3,10,20,list(vec1,vec2,vec3),mean(20))
print(k2)

#DataFrame

dc = data.frame(vec1,vec2,vec3)
print(dc)

#matrix

ma= matrix(vec5,2,5)
print(ma)
print(ma[1,][3])

ma2= matrix(c(7,1,2,3,4,5,6,))
print(ma2)
#Indexing

k3 <- list(a=vec1,b=vec2,c=vec3,10,20,list(vec1,vec2,vec3),mean(20))
print(k3)

k3$c
dc
dc[[1]][1:4]

#fraction

myfyn <- function(val1,val2,op)
{
  if (op=="+")
  {
  sum=val1+val2
  }
  if (op=="-")
  {
    sum=val1-val2
  }
  if (op=="*")
  {
    sum=val1*val2
  }
  if (op=="/")
  {
    sum=val1/val2
  }
  
  return(sum)
}

myfyn(10,20,"/")

# Arrays
vecc1 = c(1,2,3,4,5,6,7)
vecc2 = c(8,9,10,11,12)
as = array(c(vecc1,vecc2),dim=c(2,3,2))
print(as)

#pkgs

plot(vec1,vec2)
#install.packages("ggplot2")
#library(ggplot2)


