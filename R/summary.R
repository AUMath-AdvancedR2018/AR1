#' Object summary
#'
#'Gives an summary of a simulation.
#'
#'@param p a matrix of class "simulation". 
#'
#'@return It returns a summary. The summary contains the length of the individual simulation, the value of the
#'parameter phi, the value of the initial value Y_0, and (...). 
#'
#'@details 
#'
#'@examples
#'p <- rAR1(0, 300, 0.8, distfun = rnorm, 300)
#'summary(p)
#'  
#'@export

summary.simulation<-function(p){
  cat(attr(p,"type"), "realisations of an AR(1) process with length","\n", attr(p,"steps"), 
      ", intital value", attr(p,"initial_value"), ", phi=", attr(p,"phi"))
}