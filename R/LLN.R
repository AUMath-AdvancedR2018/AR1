#' LLN function
#'
#'@examples
#'y<-nsteps22(0,1000,0.8,rnorm(1000))
#'LLn(y)
#'@export

LLN<-function(y){
  v<-c()
  for(i in 1:length(y)){
    v[i]=(1/i)*sum(y[1:i])
  }
  plot(v,type="l")
  abline(h=mean(y), col="cyan2")
}