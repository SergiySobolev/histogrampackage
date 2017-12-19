source(file = "R/histogram.R")

m <- matrix(1:9,nrow = 3, byrow = TRUE)
h <- buildHistogram(d = m)
med <- hmedian(h)
