\name{volEq7}
\alias{volEq7}
\title{Model for the distribution of cell volumes}
\description{This is an implementation of a model for the distribution
  of cell volumes (\eqn{um^3})
  that constitutes Equation 7 in the paper listed in the
  references.  
}
\usage{
volEq7(A = 1, r = 1, sigma_r = 1,  t = 29, sigma_t = .3*t, V = 1)
}
\arguments{
  \item{A}{a numeric value that represents the starting value for a
    linear scaling parameter associated with the volume distribution curve}
  \item{r}{a numeric value that represents the starting value for the
  rate of cell growth parameter (\eqn{h})}
  \item{sigma_r}{a numeric value that represents the starting value for
    the variability in the rate of cell growth parameter \code{r}
    (\eqn{um^3/h})}
  \item{t}{a numeric value representing the average cell cycle time (\eqn{h})}
  \item{sigma_t}{a numeric value representing the variability in the
    average cell cycle time \code{t} (\eqn{h})}
  \item{V}{a numeric value representing the volume (\eqn{um^3})
    at which the model is to be evaluated}
}
\value{
  A numeric value representing the frequency of cells expected having
  volume \code{V} (\eqn{um^3}).
}
\references{
  Halter M, Elliott JT, Hubbard JB, Tona A, Plant AL (2009),
  "Cell Volume Distributions Reveal Cell Growth Rates and Division Times",
  Journal of Theoretical Biology, Vol 257, pp 124 - 130,
  DOI: 10.1016/j.jtbi.2008.10.031.
}
\seealso{\code{\link{fitVolDist}}}
\keyword{models}

