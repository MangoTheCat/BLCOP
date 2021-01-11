
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

``` r
library(BLCOP)

# For a matrix of monthly returns for 6 assets
head(monthlyReturns)
#>                     IBM          MS        DELL             C          JPM          BAC
#> 1998-02-02  0.057620253  0.19578623  0.40667739  0.1224778047  0.157384084  0.143954576
#> 1998-03-02 -0.005457679  0.04383326 -0.51565628  0.0785547367  0.087215863  0.064817518
#> 1998-04-01  0.115529027  0.08233841  0.19188192  0.0198333333  0.027283511  0.041952290
#> 1998-05-01  0.014067489 -0.01027006  0.02055728  0.0009805524 -0.018908776 -0.006578947
#> 1998-06-01 -0.022893617  0.17050986  0.12619828 -0.0101224490 -0.444607915  0.015761589
#> 1998-07-01  0.154080655 -0.04717084  0.17002478  0.1091868712  0.001589404  0.039900900

# Define a pick matrix (a vector of confidences)
pickMatrix <- matrix(c(1/2, -1, 1/2, 0, 0, 0), 
                     nrow = 1, 
                     ncol = 6)

# Create a views object
views <- BLViews(P = pickMatrix,
                 q = 0.06, 
                 confidences = 100,
                 assetNames = colnames(monthlyReturns))

# Determine the posterior distribution of these assets
BLPosterior(monthlyReturns, views, tau = 1/2, marketIndex = sp500Returns)
#> Prior means:
#>          IBM           MS         DELL            C          JPM          BAC 
#>  0.002269870  0.005799591 -0.001161339  0.001718354 -0.009042287  0.005472691 
#> Posterior means:
#>          IBM           MS         DELL            C          JPM          BAC 
#>  0.009795730 -0.016744179  0.014453759 -0.004741680 -0.015465517  0.001505639 
#> Posterior covariance:
#>              IBM          MS        DELL           C        JPM         BAC
#> IBM  0.022113337 0.011762652 0.013388809 0.009418743 0.01189892 0.006017050
#> MS   0.011762652 0.033040555 0.018441735 0.014076656 0.01650328 0.009143918
#> DELL 0.013388809 0.018441735 0.048344919 0.008453909 0.01088555 0.005957519
#> C    0.009418743 0.014076656 0.008453909 0.017307957 0.01246270 0.007215142
#> JPM  0.011898924 0.016503281 0.010885549 0.012462701 0.03032755 0.012937189
#> BAC  0.006017050 0.009143918 0.005957519 0.007215142 0.01293719 0.011893184
```
