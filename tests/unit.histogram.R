library('RUnit')

source(file = "R/histogram.R")

test.1 <- function() {
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

test.2 <- function() {
  m <- matrix(1,nrow = 3,ncol = 3)
  a <- buildHistogram1(d = m)
  checkEquals(a$size,9)
  checkEquals(a$h[1],9)
}
