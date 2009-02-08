\name{NIH3T3_volume_data}
\alias{NIH3T3_volume_data}
\alias{NIH3T3_a}
\alias{NIH3T3_b}
\alias{NIH3T3_c}
\alias{NIH3T3_d}
\alias{tNIH3T3_a}
\alias{tNIH3T3_b}
\alias{tNIH3T3_c}
\alias{tNIH3T3_d} 
\alias{volumes_nih3t3}
\docType{data}
\title{Volume distribution data for NIH3T3 cell cultures}
\description{
Volume distribution data for NIH3T3 cell cultures under standard culture conditions} 
\usage{data(NIH3T3_volume_data)}
\format{
  The data is formated as 4 numeric vectors of length 257 representing
  cell volume (\eqn{\mu m^3}) distributions, namely
"NIH3T3\_a",
"NIH3T3\_b",
"NIH3T3\_c", and 
"NIH3T3\_d". 


The estimated cell cycle time (\eqn{h}) for each volume
distribution dataset is indicated in the numeric objects
"tNIH3T3\_a",
"tNIH3T3\_b",
"tNIH3T3\_c", and 
"tNIH3T3\_d". 

The object "volumes\_nih3t3" is a numeric vector representing the
volumes (\eqn{\mu m^3}) associated with all of the distributions. 
}
\source{
The measurement protocol is described in the paper in the references.   
}
\references{
  Halter M, Elliott JT, Hubbard JB, Tona A, Plant AL (2009),
  "Cell Volume Distributions Reveal Cell Growth Rates and Division Times.",
  Journal of Theoretical Biology, in press.
}
\examples{
data(NIH3T3_volume_data)
plot(volumes_nih3t3, NIH3T3_d,
main=expression(paste("Distribution of cell volumes (",mu,m^3,")", sep="")), 
type="b", pch=20, ylab="frequency",
xlab=expression(paste("volume (",mu,m^3,")", sep="")))

}
\keyword{datasets}
