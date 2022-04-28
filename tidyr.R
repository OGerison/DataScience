#Cleaning a dataframe.
library(tidyr)
data("airquality")# load airqualty dataframe.
View(airquality)

# First we need to drop N/A values using libraries in particular 
# tidyr from from our dataframe callled airquality
clean<- drop_na(airquality)
clean
str(clean)
View(clean)
# Clean the Month variabe
clean$Month<-as.factor(clean$Month)
str(clean)
View(clean)

#mean of ozone
mydatas<-group_by(clean,Ozone)
mydatas

#summarize
summarize(clean,mean(Ozone))

#or
d <- mean(clean$Ozone)
d

#Binary Classifier
#create a b.c and create a new variable caked "quality" where  if ozone > quality, quality 
#is bad else good.

clean$Quality <- ifelse(clean$Ozone > d, "Poor Quality", "Good Quality")
View(clean)
str(clean)

clean$Quality <- as.factor(ifelse(clean$Ozone > d, "Poor Quality", "Good Quality"))
str(clean)

#Regression Line
model <- lm(Ozone ~ Solar.R + Wind + Temp + Month, data=clean)
abline(model, lwd=2)
summary(model)
#p values without an asterisk are not statisitically significant hence can be 
#removed.
model <- lm(Ozone ~ Solar.R + Wind + Temp, data=clean)
abline(model, lwd=2)
summary(model)