#' AR(1) simulation
#' 
#'
#'@param y0 initial value
#'@param n numer of steps
#'@param phi parameter of the model
#'@param distr vector with n elements with a given distribution.
#'
#'@return Returns a vector of length n, that is a simulation for an AR(1) process with the given parameters.
#'
#'@details The AR(1) process is a Markov chain, in which the parts (in lack of a better word) is defined recursively;\deqn{
#'Y_n+1=phi*Y_n+e_n+1}
#'the e_n's are i.i.d.
#'@examples
#'y<-simAR1(0,1000,0.8,rnorm(1000))
#'x<-simAR1(10,300,0,rt(300,5))
#'@export

simAR1<-function(y0,n,phi,distr){
  y<-c(rep(0,n))
  y[1]<-y0
  for(i in 2:n){
    y0=phi*y[i-1]+distr[i]
    y[i]<-y0
  }
  return(y)
}
