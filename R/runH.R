source(file = "R/histogram.R")

m <- matrix(1:9,nrow = 3, byrow = TRUE)
h1 <- buildHistogram(d = m)
v <- 10:12
h2 <- removeFromHistogram(h1,v)
