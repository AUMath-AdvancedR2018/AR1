## Purpose
To pass Stochastic Processes
## Functions

#### simAR1
A function that simulates an AR(1) process
Usage: 
```
simAR1(10,400,0.8,rnorm(400))
```
should print a vector whith 400 steps of the AR(1) process with normal distributed white noise and a plot this vector.

#### CLT
A function that calculates a vector form the first to the the n'th step of sum(Yi)/sqrt(n), to determine if there is a Central Limit Theorem.

```
y<-simAR1(10,400,0.8,rnorm(400))
CLT(y)
```
should print a plot of the calculated vector.

#### LLN
A function that calculates form the first to the the n'th step of sum(Yi)/n, to determine if there is a Law of Large Numbers.

```
y<-simAR1(10,400,0.8,rnorm(400))
CLT(y)
```
shold print a plot of the mentioned vector, together with a horizontal line in mean(y).

## Responsibilities

* Katrine: Make a rough first draft of a vignette.
* Ida: Finish documentation for the existing functions.
