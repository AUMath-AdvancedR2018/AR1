#' Plot simulations
#'
#'@description The plot method for objects of class \eqn{"simulation"}.
#'
#'@param p a matrix of class "simulation". 
#'
#'@return Returns a plot of every column of p.
#'
#'@examples
#'p <- rAR1(0, 300, 0.8, distfun = rnorm, 300)
#'plot(p)
#'  
#'@export

plot.simulation<-function(p){
  matplot(p, type = "l")
}