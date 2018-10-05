#' Object summary
#'
#'Gives an summary of a simulation.
#'
#'@param p a matrix of class "simulation". 
#'
#'@return It returns a summary. The summary contains the number and the length of the simulations and what kind of 
#'simulation it is. It also contains the value of the parameter phi and the initial value Y_0. 
#'
#'@details 
#'
#'@examples
#'p <- rAR1(0, 300, 0.8, distfun = rnorm, 300)
#'summary(p)
#'  
#'@export

summary.simulation<-function(p){
  cat(attr(p,"realisations"), "realisations of an", attr(p, "type"), "process with length", attr(p,"steps"), 
      ", intital value", attr(p,"initial_value"), ", phi=", attr(p,"phi"),".")
  }
