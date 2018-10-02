#' CLT function
#'
#'The function that checks, if there is a Central Limit Theorem.
#'
#'@param y a matrix where every column is a vector of random variables with the same parametervalues.
#'
#'@return Returns a histrogram with the CLT value \eqn{(sum_{i=1}^n Y_i)\sqrt(n)} for each column.
#'
#'@details If there is a is a Central Limit Theorem \eqn{(sum_{i=1}^n Y_i)\sqrt(n)} would converge towards i normal distribution. 
#'If the histogram produced by this function resembles a normal distribution, it would seem, that there is a Cental Limit Theorem.
#'
#'@examples
#'y<-replicate(50000, simAR1(0,1000,0.8,rnorm,1000))
#'CLT(y)
#'@export
CLT<-function(y){
  v<-c()
  n <- ncol(y)
  m <- nrow(y)
  for(i in 1:n){
    v[i]=(1/sqrt(m))*sum(y[,i])
  }
  hist(v, breaks = 20)
}



