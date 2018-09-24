#' CLT function
#'
#'@examples
#'y<-nsteps22(0,1000,0.8,rnorm(1000))
#'CLT(y)
#'@export
CLT<-function(y){
  v<-c()
  for(i in 1:length(y)){
    v[i]=(1/sqrt(i))*sum(y[1:i])
  }
  plot(v,type="l")
}
LLN<-function(y){
  v<-c()
  for(i in 1:length(y)){
    v[i]=(1/i)*sum(y[1:i])
  }
  plot(v,type="l")
  abline(h=mean(y), col="magenta")
}

