\name{A10_vSMC_volume_data}
\alias{A10_vSMC_volume_data}
\alias{Aph0_a}
\alias{Aph0_b}
\alias{Aph0_c}
\alias{Aph0_d}
\alias{Aph50_a}
\alias{Aph50_b}
\alias{Aph50_c}
\alias{Aph50_d}
\alias{Aph100_a}
\alias{Aph100_b}
\alias{Aph100_c}
\alias{Aph100_d}
\alias{tAph0_a}
\alias{tAph0_b}
\alias{tAph0_c}
\alias{tAph0_d}
\alias{tAph50_a}
\alias{tAph50_b}
\alias{tAph50_c}
\alias{tAph50_d}
\alias{tAph100_a}
\alias{tAph100_b}
\alias{tAph100_c}
\alias{tAph100_d}
\alias{volumes_A10_vSMC}
\docType{data}
\title{Volume distribution data for A10 vSMC cell cultures}
\description{
Volume distribution data for A10 vSMC cell cultures with the DNA polymerase
inhibitor aphidicolin added at 0nM, 50nM and 100nM concentration. }
\usage{data(A10_vSMC_volume_data)}
\format{
  The data is formated as 12 numeric vectors of length 257 representing
  cell volume (\eqn{\mu m^3}) distributions, namely
"Aph0\_a",
"Aph0\_b",
"Aph0\_c",
"Aph0\_d",
"Aph50\_a",
"Aph50\_b",
"Aph50\_c",
"Aph50\_d",
"Aph100\_a",
"Aph100\_b",
"Aph100\_c", and 
"Aph100\_d". The name of the object indicates the concentration of
aphidicolin present in nM (e.g., "Aph0\_a" represents measurements in the
presence of 0nM of aphidicolin).  Four repetitions of measurements at
each of the three concentrations are included.

The estimated cell cycle time (\eqn{h}) for each volume
distribution
dataset is indicated in the numeric objects
"tAph0\_a",
"tAph0\_b",
"tAph0\_c",
"tAph0\_d",
"tAph50\_a",
"tAph50\_b",
"tAph50\_c",

"tAph50\_d",
"tAph100\_a",
"tAph100\_b",
"tAph100\_c", and 
"tAph100\_d".

The object "volumes\_A10\_vSMC" is a numeric vector representing the volumes
(\eqn{\mu m^3}) associated with all of the distributions. 
}
\source{
The measurement protocol is described in the paper in the references.   
}
\references{
  Halter M, Elliott JT, Hubbard JB, Tona A, Plant AL (2009),
  "Cell Volume Distributions Reveal Cell Growth Rates and Division Times",
  Journal of Theoretical Biology, Vol 257, pp 124 - 130,
  DOI: 10.1016/j.jtbi.2008.10.031.
}
\examples{
data(A10_vSMC_volume_data)
plot(volumes_A10_vSMC, Aph100_b,
main=expression(paste("Distribution of cell volumes (",mu, m^3,")",sep="")),
type="b", pch=20, ylab="frequency",
xlab=expression(paste("volume (",mu, m^3,")", sep="")))
}
\keyword{datasets}
