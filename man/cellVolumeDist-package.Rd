\name{cellVolumeDist-package}
\alias{cellVolumeDist-package}
\alias{cellVolumeDist}
\docType{package}
\title{Functions to fit cell volume distributions and thereby estimate cell growth rates and division times
}
\description{
This package implements a methodology for using cell volume
distributions to estimate cell growth rates and division times that is
described in the paper entitled "Cell Volume Distributions Reveal Cell
Growth Rates and Division Times", by Michael Halter, John T. Elliott,
Joseph B. Hubbard, Alessandro Tona and Anne L. Plant, which is in press
in the Journal of Theoretical Biology.  In order to reproduce the
analysis used to obtain Table 1 in the paper, execute the command
\code{example(fitVolDist).}
}
\details{
The package fits a model for cell volume distributions under least
squares criteria using the package
\link[pkg]{minpack.lm}.  Estimates for cell growth rate and division
time are thereby obtained.  
}
\references{
  Halter M, Elliott JT, Hubbard JB, Tona A, Plant AL (2009),
  "Cell Volume Distributions Reveal Cell Growth Rates and Division Times.",
  Journal of Theoretical Biology, in press.
}
\seealso{\link[pkg]{minpack.lm}}
\keyword{package}
