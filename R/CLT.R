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
  for(i in 1:length(y)){
    v[i]=(1/sqrt(i))*sum(y[1:i])
  }
  hist(v)
}


