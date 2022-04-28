#MULTIPLE PLOT EXAMPLE

library(datasets)
head(airquality)
par(mfrow = c(1,3), mar = c(4,3,2,1), oma = c(0,0,2,2))
#mar margin size while oma is outer margin size
with(airquality,{
  #here are three plots filled in with their respective titles
  plot(Wind, Ozone, main="Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
  plot(Temp,Ozone, main="Ozone and Temperature")
  #this adds a line of text in the outer margin
  #mtext adds different text to margin either inside or outside
  mtext("Ozone and Weather in New York", outer = T)})
