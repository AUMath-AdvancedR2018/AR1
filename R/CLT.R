#' CLT function
#'
#'@param y a numeric argument
#'
#'@examples
#'y<-replicate(500,simAR1(0,100,0.8,rnorm(100)))
#'CLT(y)
#'@export
CLT<-function(y){
  v<-c()
  for(i in 1:length(y)){
    v[i]=(1/sqrt(i))*sum(y[1:i])
  }
  hist(v)
}


