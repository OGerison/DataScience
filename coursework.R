#NAME: OTIM WILLIAM GERISON
#REG NO: S19B23/421
#ACCESS NUMBER: A87886

#Number One
#i).
seq(from = 1, to = 12 , by =0.5)

#ii).
seq(from = 1, to = 10)^3

#iii).
d <- seq( from = 1, to = 100)
g <- (1/(d)*(-1)^(d-1))
g

#iv).
C <- c(seq(1,49))
for(i in C)
{
  if(i%%2 == 0) #Checking for even numbers
  {
    C[C==i] <- 0 #if it is even, replace with 0
  }
}
C

#v).
?cumsum
g <- seq(1:20)
cumsum(g)

#vi).
?seq
g<-seq(1:10)
g <- rep(g, 1:10) #first argument takes range while second one takes repeating format
g

#Number 2
#a).
library(dplyr)
Title <- c("Spider Man: Far From Home", "Amandla", "The Privilege")
Director <- c("Jon Watts", "Nerina de Jager", "Katharina Schöde")
Year <- c(2021, 2022, 2022)
Country <- c("United States of America","South Africa","Germany")

Movies1 <- data.frame(Title,Director,Year,Country)
View(Movies1)

#b).
Title <- c("The Feast")
Director <- c("Lee Haven Joness")
Year <- c(2022)
Country <- c("England")

Movies2 <- data.frame(Title,Director,Year,Country)
View(Movies2)

#c).
data("Movies")
?rbind
Movies <- rbind(Movies1,Movies2)
View(Movies)

#d).
?sort
titlesort <- sort(Movies$Title, decreasing = T)
View(titlesort)
#It returns the titles in an array form.
print("End of Program")

