library(datasets)
View(trees)
library(dplyr)

#glimpse of the dataset with column datatypes
glimpse(trees)
str(trees)

#selecting particular columns
tree_Selected <- trees %>%
  select(Height, Volume)
View(tree_Selected)

##### DPLYR PACKAGE #####
#using sales data df
library(readxl)
Sales_data <- read_excel("E:/YEAR 3 SEM 2/Data Science/Sales data.xlsx")
View(Sales_data)
library(dplyr)
#names() this returns all the names of columns in your dataframe
names(Sales_data)

#select() used to select specified columns in the df.
mysales <- select(Sales_data, Rep,Item)
View(mysales)

#filter() 
mysales1 <- filter(Sales_data, Units>20)
View(mysales1)


mysales2 <- filter(Sales_data, Units>20 & Total <100)
View(mysales2)

#ascending
mysubdata <- arrange(Sales_data, Rep)
View(mysubdata)

#descending
mysubdata1 <- arrange(Sales_data, desc(Rep))
View(mysubdata1)

head(Sales_data,5) #first 5 rows
tail(Sales_data,5) # last 5 rows

#rename()
mydata <- rename(Sales_data, District = Region)
View(mydata)
names(mydata)

# Use count to find the number of counties in each region
counties_selected %>%
  count(region, sort = TRUE)