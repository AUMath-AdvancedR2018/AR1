#' LLN function
#' 
#' A function that checks, if there is a Law of Large Numbers
#'
#'@param y vector of random variables.
#'
#'@return A plot through the values \degn{sum_{i=1}^{k}y_j/k} for each k from 1 to n, in addition to a line through the mean of y.
#'
#'@details If a given output of this function resembles that it converges towards the line through the mean of y, it would seem that there is a Law of Large Numbers.
#'
#'@examples
#'y<-simAR1(0,1000,0.8,rnorm(1000))
#'LLN(y)
#'@export

LLN<-function(y){
  v <- cumsum(y)/(1:length(y))
  plot(v,type="l")
  abline(h=mean(y), col="cyan2")
}
