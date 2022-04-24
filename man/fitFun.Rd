\name{fitFun}
\alias{fitFun}
\title{Model for the distribution of cell volumes}
\description{This is an implementation of a model for the distribution
  of cell volumes that constitutes Equation 7 in the paper listed in the
  references.  It evaluates \code{volEq7} at a  vector of volume
  (\eqn{\mu m^3}) values.
}
\usage{
fitFun(par,  t = 29, sigma_t = .3*t, V = 1:100)
}
\arguments{
  \item{par}{a list of parameter starting values, with elements \code{A},
    \code{r} (\eqn{\mu m^3/h}), and \code{sigma_r} (\eqn{\mu m^3/h}) }
  \item{t}{a numeric value representing the average cell cycle time (\eqn{h})}
  \item{sigma_t}{a numeric value representing the variability in the
    average cell cycle time \code{t} (\eqn{h})}
  \item{V}{a numeric value representing the (vector of) volumes (\eqn{\mu m^3})
    at which the model is to be evaluated}
}
\value{
  A numeric vector representing a cell volume (\eqn{\mu m^3}) distribution.
}
\references{
  Halter M, Elliott JT, Hubbard JB, Tona A, Plant AL (2009),
  "Cell Volume Distributions Reveal Cell Growth Rates and Division Times",
  Journal of Theoretical Biology, Vol 257, pp 124 - 130,
  DOI: 10.1016/j.jtbi.2008.10.031.
}
\seealso{\code{\link{fitVolDist}},\code{\link{fitFun}} }
\keyword{models}

