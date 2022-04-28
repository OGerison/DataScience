#assigning a variable
x <- 1 
x
x+2
y <- x+2
y
#vectors in R
x <- c(1,2,3,4,5)
x
length(x)
#simpler ways of generating vectors
g <- c(1:100)
g
length(g)
sum(g)
mean(g)
#generate arithmetic sequence
seq(from = -1, to = 1, length =6)
#characters
names <- c("Otim","Willam","Gerison")
names
length(names)
#mean
mean(x)
#generating matrices
w <- matrix(1:12,nrow = 3, ncol = 4)
w
seq(from = 1, to = 10)^3
(1:10)^3
seq(from =1, to =12, by = 0.5)
d <- seq( from = 1, to = 100)
g <- (1/(d)*(-1)^(d-1))
g


#lecture 2
#accessing data


#numeric
m <- 15 #double processing by default
m
typeof(m)

#character

name <- "Otim"
name
typeof(name)
?typeof

#logical

g <- TRUE
g
typeof(g)
g1 <- F
g1
typeof(g1)

#Data Structures

#Vectors
v1 <- c(1,2,3,4,5)
v1
is.vector(v1)

v2 <- c(TRUE, FALSE, TRUE, FALSE,F)
is.vector(v2)

v3 <- c("Monday","Otim")
v3
is.vector(v3)

#Matrices
m1 <- matrix(c(T,T,T,F,F),nrow=5, ncol = 2)
m1

m2 <- matrix(1:2, nrow=2, ncol=2)
m2


#ARRAYS
#GIVE DATA THEN ROWS, COLUMNS, TABLE

a1 <- array(c(1:24), c(4,3,4))
a1

#DataFrames
#combine vectors of the same length
vnumeric <- c(1,2,3)
vcharacter <- c("Otim", "William", "Gerison")
vlogical <- c(T,F,T)
df1 <- cbind(vnumeric, vcharacter, vlogical)
View(df1) #this is a matrix of one data frame

df <- as.data.frame(cbind(vnumeric, vcharacter, vlogical))
df <- as.data.frame(df1)
df #this makes a data frame with three different data types


#LISTS

list1 <- list(01,02,03)
list1


#CREATING DATA
x1 <- 1:3
x1
y1 <- 1:9
y1
#combining variables
df1 <- cbind.data.frame(x1,y1)
typeof(df1$x1)
str(df1)
