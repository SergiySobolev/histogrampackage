library('RUnit')

source(file = "R/histogram.R")

test.buildhistogram.1 <- function() {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  a <- buildHistogram1(d = m)
  checkEquals(a$size,9)
  checkEquals(a$h[1],1)
  checkEquals(a$h[2],1)
  checkEquals(a$h[3],1)
  checkEquals(a$h[4],1)
  checkEquals(a$h[5],1)
  checkEquals(a$h[6],1)
  checkEquals(a$h[7],1)
  checkEquals(a$h[8],1)
  checkEquals(a$h[9],1)
}

test.buildhistogram.2 <- function() {
  m <- matrix(1,nrow = 3,ncol = 3)
  a <- buildHistogram1(d = m)
  checkEquals(a$size,9)
  checkEquals(a$h[1],9)
}

test.buildhistogram.and.add.array <- function () {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  h1 <- buildHistogram1(d = m)
  v <- 1:3
  h2 <- addToHistogram(h1,v)
  checkEquals(h2$size, 12)
  checkEquals(h2$h[1], 2)
  checkEquals(h2$h[2], 2)
  checkEquals(h2$h[3], 2)
}
