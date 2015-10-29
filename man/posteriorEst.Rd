\name{posteriorEst}
\alias{posteriorEst}
\title{This function performs the "core" calculation of the Black-Litterman model.}
\usage{
posteriorEst(views, mu, tau = 0.5, sigma, kappa = 0)
}
\arguments{
  \item{views}{An object of class BLViews}

  \item{mu}{A vector of mean equilibrium returns}

  \item{tau}{The "tau" parameter in the Black-Litterman
  model.}

  \item{sigma}{The variance-covariance matrix of the
  returns of the assets}

  \item{kappa}{if greater than 0, the confidences in each
  view are replaced.  See the online help for details}
}
\value{
An object of class BLResult holding the updated
Black-Litterman posterior
}
\description{
This function performs the "core" calculation of the
Black-Litterman model.
}
\author{
Francisco
}

