# plot forecast con data sulle ascisse
plot2.ts <- function(t, typ="l", xlab="Time", ylab=deparse(substitute(t)), ...) {
  plot(as.vector(t)~date_decimal(as.vector(time(t))), 
       typ=typ, 
       xlab=xlab, 
       ylab=ylab, 
       ...)
}

plot2.forecast <- function(t, typ="l", xlab="Time", ...) {
  args <- list(...)
  if (is.null(args$xlim)) {
    first <- date_decimal(min(time(t$x)))
    last <- date_decimal(max(time(t$mean)))
    args$xlim <- c(first, last)
  }
  args$xlim <- as.POSIXct(args$xlim)
  if (is.null(args$ylim)) {
    first <- min(t$x, t$mean)
    last <- max(t$x, t$mean)
    args$ylim <- c(first, last)
  }
  if (is.null(args$ylab)) {
    args$ylab <- deparse(substitute(t))
  }
  args$x = date_decimal(as.vector(time(t$x)))
  args$y = as.vector(t$x)
  args$typ=typ
  args$xlab=xlab
  do.call(plot, args)
  lines(as.vector(t$mean)~date_decimal(as.vector(time(t$mean))))
  nbounds <- dim(t$lower)[2]
  for (i in 1:nbounds) {
    lines(as.vector(t$lower[,i])~date_decimal(as.vector(time(t$mean))), col=i+1)
    lines(as.vector(t$upper[,i])~date_decimal(as.vector(time(t$mean))), col=i+1)
  }
}

plot2 <- function(t, ...) UseMethod("plot2")

ARMA <- function(n, p=NULL, q=NULL, sd=1) {
  lp <- length(p)
  lq <- length(q)
  epsi <- rnorm(n, sd=sd)
  v <- epsi
  if (lq) {
    for (i in seq(lq+1,n)) {
      for (j in 1:max(1, lq)) v[i] <- epsi[i] + q[j]*epsi[i-j]
    }
  }
  if (lp) {
    for (i in seq(lp+1, n)) {
      for (j in 1:max(1, lp)) v[i] <- v[i] + p[j]*v[i-j]
    }
  }
  return(v)
}



