#' LLN function
#' 
#' Calculates form the first to the the n'th step of sum(Yi)/n, to determine if there is a Law of Large Numbers.
#'
#'@param y vector of integers
#'
#'@examples
#'y<-simAR1(0,1000,0.8,rnorm(1000))
#'LLN(y)
#'@export

LLN<-function(y){
  v<-c()
  for(i in 1:length(y)){
    v[i]=(1/i)*sum(y[1:i])
  }
  plot(v,type="l")
  abline(h=mean(y), col="cyan2")
}
