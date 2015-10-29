\name{Estimators}
\alias{Estimators}
\alias{getPriorEstim}
\alias{getPosteriorEstim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Get prior and posterior estimators stored in package scope}
\description{
These functions are not intended to be called directly by the user but exist to allow third party
optimizer routines to access prior and posterior estimators calculated as part of the portfolio optimisation.
}
\usage{
getPriorEstim(x, spec=NULL, ...)
getPosteriorEstim(x, spec=NULL, ...)
}
\arguments{
  \item{x}{multivariate time series} 
  \item{spec}{optional portfolio specification}
  \item{\dots}{additional arguments}
}
\value{
A list with 2 elements:
\item{mu}{estimate of mean}
\item{Sigma}{estimate of covariance}
}
\author{Richard Chandler-Mant <rchandler-mant@mango-solutions.com>}
\keyword{methods}
