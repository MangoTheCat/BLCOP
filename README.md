
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BLCOP

<!-- badges: start -->

<!-- badges: start -->

[![R-CMD-check](https://github.com/MangoTheCat/BLCOP/workflows/R-CMD-check/badge.svg)](https://github.com/MangoTheCat/BLCOP/actions)
<!-- badges: end -->

<!-- badges: end -->

The `{BLCOP}` package is an implementation of the Black-Litterman and
copula opinion pooling frameworks. The Black-Litterman model was devised
in 1992 by Fisher Black and Robert Litterman. Their goal was to create a
systematic method of specifying and then incorporating analyst/portfolio
manager views into the estimation of market parameters.

  - `BLViews()` and `COPViews()` construct views objects
  - `addBLViews()` and `addCOPViews()` allow more views to be added to
    existing objects
  - `distribution()` and `mvdistribution()` create `distribution` and
    `mvdistribution` objects
  - `BLPosterior()` calculates the posterior distribution using the
    Black-Litterman model
  - `COPPosterior()` calculates the posterior distribution using copula
    opinion pooling

## Installation

You can install the released version of BLCOP from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("BLCOP")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("MangoTheCat/BLCOP")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(BLCOP)
## basic example code
```
