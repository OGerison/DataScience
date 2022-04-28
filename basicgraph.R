#BASIC GRAPHS
library(datasets)
#load inbuilt datasets

head(iris) #shows first 6 lines of dataset
plot(iris) #plots a scatter plot
plot(iris$Species) #plotting a categorical column i.e text
plot(iris$Sepal.Length) #plotting a quantitative column i.e numbers
plot(iris$Petal.Length, iris$Species) #plotting quantitative and categorical values
plot(iris$Petal.Length, iris$Petal.Width)

#PLOT WITH OPTIONS
plot(iris$Petal.Length, iris$Petal.Width,
     col="red",#Hex code for  colour red
     pch = 19, #use solid circles
     main = "Petal Length Vs Petal Width", # title of graph
     xlab = "Petal Length",
     ylab = "Petal Width"
)

#HISTOGRAM
hist(iris$Sepal.Length, col="red")
hist(iris$Sepal.Width, col="blue")
hist(iris$Petal.Length, col = "green")
hist(iris$Petal.Width, col="purple")

#Histograms by Groups
#Put graphs in 3 rows and 1 column
par(mfrow = c(3,1))
hist(iris$Petal.Width[iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = " ",
     col = "red")

hist(iris$Petal.Width[iris$Species == "virginica"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = " ",
     col = "blue")

hist(iris$Petal.Width[iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "yellow")

#new dataset
library(datasets)
head(mtcars)
plot(mtcars)
barplot(mtcars$cyl)
# create a table with frequencies of each category
Cylinders <- table(mtcars$cyl) #creating a table
barplot(Cylinders)
plot(Cylinders)

#Bar Charts
barplot(Cylinders,
        col="red",
        main = "Bar Plot Showing Cylinder Frequencies",
        xlab = "Cylinder",
        ylab = "Frequencies")
#SCATTER PLOTS
#Used for visualization of association between two quantitative variables.
# i.e linear association, consistency spread, outliers and correlation

# It is always good to first check univariate ditribution.
hist(mtcars$wt)
hist(mtcars$mpg)
#Basic plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg)

plot(mtcars$wt, mtcars$mpg,
     pch = 19, #solid circle
     cex = 1.5, #makes 150% size
     col="purple",
     main ="MPG as a function of weight of cars",
     xlab="Weight(pounds)",
     ylab ="MPG"
)


#OVERLAYING PLOTS
#WHY?
#Due to increased Information density.
library(datasets)
head(lynx)
hist(lynx)
#adding more plotting options
hist(lynx,
     col = "purple",
     breaks = 14,
     freq = F,
     xlab = "Number of Lynx Trapped"
)
#Normal Distribtion
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "red",
      lwd = 2, #line width of 2 plots
      add = T)
#ADD TWO KERNEL DENSITY ESTIMATORS
lines(density(lynx), col = "yellow", lwd =2)
lines(density(lynx), col = "green", lwd =2)
#Add a rug plot
#a rug plot adds a strip under the histogram. location of each data point.
rug(lynx, lwd = 2, col="black")

#Clear Packages
#detach("package: datasets", unload = T)

summary(airquality)
head(airquality)
View(airquality)
with(airquality,plot(Wind, Ozone, main ="Ozone and Wind In New York", type ="n"))
with(subset(airquality, Month==5), points(Wind, Ozone,col="red",pch=19))
with(subset(airquality, Month!=5), points(Wind, Ozone,col="blue",pch=10))
legend("topright", pch=1, col=c("red", "blue"), legend = c("May","Other Months"))
?with
model <- lm(Ozone ~ Wind,airquality)
abline(model, lwd=2)
#abline adds straight line to plot