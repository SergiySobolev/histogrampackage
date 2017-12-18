buildHistogram <- function(d) {
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

addToHistogram <- function(hs, arr) {
  h <- hs$h;
  s <- hs$size
  for(i in 1:length(arr)) {
    index <- arr[i]
    h[index]<- h[index]+1
    s <- s+1
  }
  newhs <- list(h=h, size=s)
  return(newhs)
}

addPixelToHistogram <- function(hs, p) {
  hs$h[p] <- hs$h[p] + 1
  hs$size <- hs$size + 1
  return(hs)
}

removeFromHistogram <- function(hs, arr) {
  h <- hs$h;
  s <- hs$size
  for(i in 1:length(arr)) {
    index <- arr[i]
    h[index] <- h[index] - 1
    if(h[index] < 0 ) {
      stop(paste(c(index, " not present in histogram"), collapse = " "))
    }
    s <- s - 1
    if(s < 0) {
      stop("Histogram size can't be less than zero")
    }

  }
  newhs <- list(h=h, size=s)
  return(newhs)
}

visualize <- function(hs) {
  arr <- hs$h
  barplot(arr)
}
