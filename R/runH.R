buildHistogram1 <- function(d) {
  h <- array(0,dim=256)
  s <- 0
  for(i in 1:nrow(d)) {
    for(j in 1:ncol(d)) {
      v <- d[i,j]
      h[v] <- h[v] + 1
      s <- s + 1
    }
  }
  y <- list(h=h, size=s)
  return (y)
}

addToHistogram1 <- function(hs, arr) {
  h <- hs$h;
  s <- hs$size
  for(i in 1:length(arr)){
    h[i]<- h[i]+1
    s <- s+1
  }
  newhs <- list(h=h, size=s)
  return(newhs)
}
m <- matrix(1:9,nrow = 3,ncol = 3)
a <- buildHistogram1(d = m)
b <- addToHistogram1(hs = a, arr = 1:3)
