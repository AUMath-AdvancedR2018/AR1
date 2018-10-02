#' LLN function
#' 
#' A function that checks, if there is a Law of Large Numbers
#' Calculates form the first to the the n'th step of sum(Yi)/n, to determine if there is a Law of Large Numbers.
#'
#'@param x a matrix where every column is a vector of random variables with the same parametervalues.
#'
#'@return A plot through the values \eqn{sum_{i=1}^{k}y_j/k} for each k from 1 to n.
#'
#'@details If a given output of this function resembles that it converges towards the same value, it would seem that there is a Law of Large Numbers.
#'
#'@examples
#'x<-replicate(10, simAR1(0,1000,0.8,rnorm(1000)))
#'LLN(x)
#'@export

LLN1<-function(y){
  v <- cumsum(y)/(1:length(y))
  v
}

LLN <- function(x){
  n <- ncol(x)
  c <- matrix(c(rep(0,length(x))), nrow=nrow(x), ncol=n)
  for(i in 1:n){
    c[,i]=LLN1(x[,i])
  }
  c
  matplot(c, type = "l")
}

x <- replicate(10, simAR1(0, 5000, 0.8, rnorm(5000)))
LLN(x)
