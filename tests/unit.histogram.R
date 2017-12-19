library('RUnit')

source(file = "R/histogram.R")

test.buildhistogram.1 <- function() {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  a <- buildHistogram(d = m)
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
  a <- buildHistogram(d = m)
  checkEquals(a$size,9)
  checkEquals(a$h[1],9)
}

test.buildhistogram.and.add.array <- function () {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  h1 <- buildHistogram(d = m)
  v <- 1:3
  h2 <- addToHistogram(h1,v)
  checkEquals(h2$size, 12)
  checkEquals(h2$h[1], 2)
  checkEquals(h2$h[2], 2)
  checkEquals(h2$h[3], 2)
}

test.buildhistogram.and.remove.array <- function () {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  h1 <- buildHistogram(d = m)
  v <- 1:3
  h2 <- removeFromHistogram(h1,v)
  checkEquals(h2$size, 6)
  checkEquals(h2$h[1], 0)
  checkEquals(h2$h[2], 0)
  checkEquals(h2$h[3], 0)
}

test.buildhistogram.and.remove.array.and.catch.error <- function () {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  h1 <- buildHistogram(d = m)
  v <- 10:12
  checkException(removeFromHistogram(h1,v))
}

test.add.pixel.to.histogram <- function () {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  h1 <- buildHistogram(d = m)
  p <- 3
  h2 <- addPixelToHistogram(h1,p)
  checkEquals(h2$size, 10)
  checkEquals(h2$h[2], 1)
  checkEquals(h2$h[3], 2)
  checkEquals(h2$h[4], 1)
}

test.median.1 <- function() {
  m <- matrix(1:9,nrow = 3, byrow = TRUE)
  h <- buildHistogram(d = m)
  checkEquals(hmedian(h),5)
}

test.median.2 <- function() {
  m <- matrix(c(1,2,2,3,4,9) ,nrow = 3, byrow = TRUE)
  h <- buildHistogram(d = m)
  checkEquals(hmedian(h), 3)
}

test.median.3 <- function() {
  m <- matrix(c(1,2,2,2,4,9) ,nrow = 3, byrow = TRUE)
  h <- buildHistogram(d = m)
  checkEquals(hmedian(h), 2)
}

test.median.4 <- function() {
  m <- matrix(c(10,10,10,10,20,20) ,nrow = 3, byrow = TRUE)
  h <- buildHistogram(d = m)
  checkEquals(hmedian(h), 10)
}
