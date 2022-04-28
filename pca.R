library(datasets)
View(iris)
head(iris)
str(iris)
#USArrests or Theoph dataset of  choice

#Performing PCA
#we deal with numeric values only
iris.pca <- iris[,1:4]
iris.pca <- princomp(iris, cor = T)
iris.pca <- prcomp(iris[,1:4], scale. = T)
summary(iris.pca)
plot(iris.pca, type="l")
eigenvectors <- iris.pca$rotation
eigenvectors
eigenvalues <- iris.pca$sdev*iris.pca$sdev
eigenvalues
iris.pca$x

#Combine PC scores with original dataset and a plot to show how the PCs have enabled 
#us to group the data together.
iris.x <- cbind(iris, iris.pca$x[,1:2])
View(iris.x)

#Visualize the principal components
library(ggplot2)
ggplot(iris.x, aes(PC1, PC2, col=Species, fill = Species)) + stat_ellipse(geom="polygon", col="black", alpha=0.8)+geom_point(shape=21, col="red")




