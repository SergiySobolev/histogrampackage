source(file = "R/histogram.R")

m <- matrix( c(10,20,20,20,30,30,40,50,50,50,50,50),nrow = 3, byrow = TRUE)
h1 <- buildHistogram(d = m)
visualize(h1)
