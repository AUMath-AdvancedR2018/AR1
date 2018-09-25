#' AR(1) simulation
#'
#'@examples

#'@param y initial value
#'@param n numer of steps
#'@param phi parameter of the model
#'@param distr vector with n elements with a given distribution.
#'
#'
#' @return returns the four plots described.

#'y<-simAR1(0,1000,0.8,rnorm(1000))
#'x<-simAR1(10,300,0,rt(300,5))
#'@export

simAR1<-function(y0,n,phi,distr){
  y<-c()
  y[1]<-y0
  for(i in 2:n){
    y0=phi*y[i-1]+distr[i]
    y[i]<-y0
  }
  plot(y,type="l") 
  return(y)
}
