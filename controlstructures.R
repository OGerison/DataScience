############ CONTROL STRUCTURES #########################################
# write a programme to check whether a number is positive.
x <- 5
if(x >= 0){
  print('Positive Number')
}
print('End of Program')

x <- -2
if(x >= 0){
  print('Positive Number')
}
print('End of Program')

# we introduce in the else function
x <- -2
if(x >= 0){
  print('Positive Number')
} else{
  print('Negative Number')
}
print('End of Program')

#let x be 3
x <- 3
if(x > 0){
  print('Positive Number')
} else if (x < 0){
  print('Negative Number')
} else {
  print('Zero Number')
}
print('End of Program')

#let x be -4
x <- -4
if(x > 0){
  print('Positive Number')
} else if (x < 0){
  print('Negative Number')
} else {
  print('Zero Number')
}
print('End of Program')

#let x be 0
x <- 0
if(x > 0){
  print('Positive Number')
} else if (x < 0){
  print('Negative Number')
} else {
  print('Zero Number')
}
print('End of Program')

# Let us now look at ifelse()  function
x <- 5
ifelse(x>=0,'Positive Number','Negative Number')

# Suppose we assign x to be -4
x<- -4
ifelse(x>=0, 'Positive Number', 'Negative Number')

# write a programme to check whether the number is even or odd
x <- 5
ifelse(x%%2 == 0,'Even Number','Odd Number')

############## for loop #############################
for(i in 1:5){
  print(i)
}

x <- 1:10

for(i in x){
  print(i)
}

x <- letters
for(i in x){
  print(i)
}

# suppose we want the first five characters one at a time
x <- letters
y <- x[1:5]
for(i in y){
  print(i)
}

# While loop
i <- 1
while(i<=5){
  print(i)
  i<- i+1
}

############## User defined functions ########################
sum = function(a, b){
  c= a+b
  return(c)
}
sum(2,5)
sum(-7,9)
sum(-12,0.5)

mysum = function(x,y){
  z <- x + y
  return(z)
}
mysum(2,9)

myfun = function(x){
  y = x^2-1
  return(y)
}
myfun(1)
