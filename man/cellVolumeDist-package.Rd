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
squares criteria using the function
\link[minpack.lm]{nls.lm}.  Estimates for cell growth rate and division
time are thereby obtained.  
}
\references{
  Halter M, Elliott JT, Hubbard JB, Tona A, Plant AL (2009),
  "Cell Volume Distributions Reveal Cell Growth Rates and Division Times",
  Journal of Theoretical Biology, Vol 257, pp 124 - 130,
  DOI: 10.1016/j.jtbi.2008.10.031.
}
\seealso{\link[minpack.lm]{nls.lm}}
\keyword{package}
