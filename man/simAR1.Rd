% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simAR1.R
\name{simAR1}
\alias{simAR1}
\title{AR(1) simulation}
\usage{
simAR1(y0, n, phi, distfun = rnorm, ...)
}
\arguments{
\item{y0}{initial value}

\item{n}{numer of steps}

\item{phi}{parameter of the model}

\item{distfun}{a distribution function}

\item{...}{parameters to the function disfun}
}
\value{
Returns a vector of length n, that is a simulation for an AR(1) process with the given parameters.
}
\description{
AR(1) simulation
}
\details{
The AR(1) process is a Markov chain, in which the parts (in lack of a better word) is defined recursively;\deqn{
Y_n+1=phi*Y_n+e_n+1}
the e_n's are i.i.d.
}
\examples{
y<-simAR1(0, 1000, 0.8, rnorm, 1000)
x<-simAR1(10, 300, 0, rt, 300, 1.5)
}
