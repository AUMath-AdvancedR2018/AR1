## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library("AR1")

## ---- echo=FALSE, fig.width=3, fig.height=3, fig.show='hold'-------------
y <- simAR1(0, 300, 0.8, rnorm, 300)
plot(y, type = "l", main = "Normal distribution")
x <- simAR1(0, 300, 0, rt, 300, 1.5)
plot(x, type = "l", main = "t distribution")

## ---- echo=FALSE, fig.width=3, fig.height=3, fig.align='center'----------
x <- replicate(10, simAR1(0, 5000, 0.8, rnorm, 5000))
LLN(x)

## ------------------------------------------------------------------------
w <- replicate(50000, simAR1(0, 1000, 0.8, rnorm, 1000))
CLT(w)

