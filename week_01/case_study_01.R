data(iris)
#iris$Sepal.Length
petal_length_mean <-mean(iris$Petal.Length)
petal_length_mean

#png(file = "myplot1.png", bg = "transparent")
hist(iris$Petal.Length,
     main="Histogram for Petal.Length",
     border="blue",
     col="green")
#dev.off()