library('RUnit')

source(file = "R/histogram.R")

test.examples <- function() {
  checkEquals(list(1,2,3), histogram(d = list(1,2,3)))
  checkEquals(list(1,2,3), histogram(d = list(1,2,3,3)))
  checkEquals(list(1,2,3,4), histogram(d = list(1,2,3,3,4)))
}
