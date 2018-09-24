#' AR(1) simulation
#'
#'@examples

#'y<-nsteps22(0,1000,0.8,rnorm(1000))
#'average(y)
#'CLT(y)
#'@export

nsteps22<-function(y0,n,phi,distr){
  y<-c()
  y[1]<-y0
  for(i in 2:n){
    y0[i]=phi*y0[i-1]+distr[i]
    y[i]<-y0[i]
  }
  plot(y,type="l") 
  return(y)
}
average<-function(y){
  v<-c()
  for(i in 1:length(y)){
    v[i]=(1/i)*sum(y[1:i])
  }
  plot(v,type="l")
  abline(h=mean(y), col="magenta")
}
CLT<-function(y){
  v<-c()
  for(i in 1:length(y)){
    v[i]=(1/sqrt(i))*sum(y[1:i])
  }
  plot(v,type="l")
}
#Plot for rnorm
plotNSteps <- function(y01, y02, n, theta1, theta2){
  par(mfrow = c(2,2))
  nsteps22(y01, n, theta1, rnorm(n))
  nsteps22(y02, n, theta1, rnorm(n))
  nsteps22(y01, n, theta2, rnorm(n))
  nsteps22(y02, n, theta2, rnorm(n))
}
plotNSteps(0,10,100,0,0.8)

#plot for t-distr
plotNStepst <- function(y01, y02, n, theta){
  par(mfrow = c(2,2))
  t = c(1.5,3,5,10)
  nsteps22(y01, n, theta, rt(n, t[1]))
  nsteps22(y02, n, theta, rt(n, t[2]))
  nsteps22(y01, n, theta, rt(n, t[3]))
  nsteps22(y02, n, theta, rt(n, t[4]))
}
plotNStepst(0,10,100,0.8)
#:-)
y<-nsteps22(0,1000,0.8,rnorm(1000))
average(y)
CLT(y)

