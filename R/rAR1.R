#' The rAR1 function
#' 
#'@param n nubmer of columns of AR(1) simulations the function shold give.
#'@param y0 initial value
#'@param m numer of steps
#'@param phi parameter of the model
#'@param distfun a distribution function
#'@param ... parameters to the function disfun
#'
#'@return a matrix where every column has m steps of an AR(1) process, and every process has the same parameters.
#'
#'@examples
#'l<-rAR1(10,5,200,0.6,rnorm,200)
#'summary(l)
#'plot(l)
#'@export
rAR1 <- function(n, y0=0, m=300, phi=0.5, distfun=rnorm, ...){
  require("purrr")
  p <- rerun(n,simAR1(y0, m, phi, distfun,...))
  result <- matrix(unlist(p), ncol = n, byrow = F)
  attr(result,"type") <- "AR(1)"
  attr(result,"realisations") <- n
  attr(result,"initial_value") <- y0
  attr(result, "steps") <- m
  attr(result,"phi") <- phi
  attr(result,"distr_white_noise") <- distfun
  class(result) <- c("simulation","matrix")
  result
}
