\name{BLPosterior}
\alias{BLPosterior}
\title{BLposterior}
\usage{
BLPosterior(returns, views, tau = 1, marketIndex, riskFree = NULL,
  kappa = 0, covEstimator = "cov")
}
\arguments{
  \item{returns}{A matrix of time series of returns.  The
  columns should correspond to individual assets.}

  \item{views}{An object of class BLViews}

  \item{tau}{The "tau" parameter in the Black-Litterman
  model.}

  \item{marketIndex}{A set of returns of a market index.}

  \item{riskFree}{A time series of risk-free rates of
  return.  Defaults to 0}

  \item{kappa}{if greater than 0, the confidences in each
  view are replaced.  See the online help for details}

  \item{covEstimator}{A string holding the name of the
  function that should be used to estimate the
  variance-covariance matrix.  This function should simply
  return a matrix.}
}
\value{
An object of class BLResult
}
\description{
BLposterior
}
\author{
Francisco
}

