#' CLT function
#'
#'@param y vector of integers
#'
#'@examples
#'y<-simAR1(0,1000,0.8,rnorm(1000))
#'CLT(y)
#'@export
CLT<-function(y){
  v<-c()
  n <- ncol(y)
  for(i in 1:n){
    v[i]=(1/sqrt(n))*sum(y[,i])
  }
  hist(v, breaks = 20)
}



