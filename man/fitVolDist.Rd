\name{fitVolDist}
\alias{fitVolDist}
\title{Fit a model for cell volume distribution under least squares criteria.}
\description{This function fits a model for cell volume distribution
  under least squares criteria; free model parameters are the cell
  growth rate \code{r} (\eqn{\mu m^3/h}), the variability in cell growth rate
  \code{sigma_r} (\eqn{\mu m^3/h}) and a linear scaling factor \code{A}.
}
\usage{
fitVolDist(vol, freq, r = 100, sigma_r = 44, t = 40,
           sigma_t = 0.3 * t, maxiter = 100, nprint = 1,
           alg="leastsq")
}
\arguments{
  \item{vol}{a vector of numeric values representing volumes (\eqn{\mu
      m^3})}
  \item{freq}{a vector of numeric values with the same length as
    \code{vol}, representing the frequency of cells of the volumes given
    in \code{vol}}
  \item{r}{a numeric value that represents the starting value for the
    rate (\eqn{\mu m^3/h}) of cell growth parameter}
  \item{sigma_r}{a numeric value that represents the starting value for
    the variability in the rate of cell growth parameter \code{r}
    (\eqn{\mu m^3/h}) }  
  \item{t}{a numeric value representing the average cell cycle time (\eqn{h})}
  \item{sigma_t}{a numeric value representing the variability in the
      average cell cycle time \code{t} (\eqn{h})}
  \item{maxiter}{numeric value representing the maximum number of
    iterations used by \link[minpack.lm]{nls.lm} in model fitting under least
    squares criteria}
  \item{nprint}{optimization output is printed every \code{nprint}
    iterations}
  \item{alg}{character string indicating the algorithm to use; the
    choices are now "leastsq", so that that sum square error
    \code{sum((data - model)^2)} is minimized, or "chisq", so that the
    multinomial likelihood chi-square

    \code{2*sum(data*log(data/model))} is  minimized.}    
}

\value{
  \code{fitVolDist} returns
  an object of class \code{"fitVolDist"}.
  
  The generic accessor functions \code{coefficients},
  \code{vcov}, \code{deviance}, \code{fitted} and \code{residuals} extract
  various useful features of the value returned by \code{fitVolDist}.

  An object of class \code{"fitVolDist"} is a list containing the
  following components:
  \item{t}{the value for \code{t} (\eqn{h}) used}
  \item{sigma_t}{the value for \code{sigma_t} (\eqn{h})  used}
  \item{fitted}{the model fit.}
  \item{fit.res}{the output object returned from \link[minpack.lm]{nls.lm}.}
  \item{summary.fit.res}{the summary of the output object returned from
    \link[minpack.lm]{nls.lm}.}
}
\references{
  Halter M, Elliott JT, Hubbard JB, Tona A, Plant AL (2009),
  "Cell Volume Distributions Reveal Cell Growth Rates and Division Times.",
  Journal of Theoretical Biology, in press.
}
\seealso{\code{\link{volEq7}}}
\examples{

#############################################################
# Fit volume distribution data for A10 vSMC cell cultures
# as described in the above referenced paper
#############################################################

## load the volume distributions in the "A10_vSMC_volume_data" dataset
data("A10_vSMC_volume_data")  
labs <- c("a","b","c","d")

## the volume distributions representing 0 nM aphidicolin concentration
Aph0 <- list(Aph0_a, Aph0_b, Aph0_c, Aph0_d)
## the associated cell cycle times
tAph0 <- c(tAph0_a, tAph0_b, tAph0_c, tAph0_d)   
## fit each dataset
Aph0res <- list()
Aph0tab <- matrix(ncol=2,nrow=4)
for(i in 1:length(Aph0)) {
  Aph0res[[i]] <- fitVolDist(vol=volumes_A10_vSMC, freq=Aph0[[i]],
                             r=100,sigma_r=44, t=tAph0[i])

  Aph0tab[i,] <- coef(Aph0res[[i]])
}
Aph0tab <- rbind(Aph0tab, colMeans(Aph0tab))
colnames(Aph0tab) <- c("r", "sigma_r")
rownames(Aph0tab) <- c(labs, "mean values")

## plot results 
par(mfrow=c(3,2))

for(i in 1:length(Aph0)) {
  pe <- signif(coef(Aph0res[[i]]),3)
  plot(volumes_A10_vSMC, Aph0[[i]], type="l", main= substitute(paste(
  "r: ", p1, ", ", sigma[r],": ",p2), 
  list(p1=pe[1], p2=pe[2])),
  xlab = expression(paste("volume (",mu, m^3,")", sep="")), 
  sub=paste("vol. dist. Aphidicolin 0 nM", labs[i]), ylab="frequency")
  
  lines(volumes_A10_vSMC, fitted(Aph0res[[i]]), col=2)
}
textplot("(Above) Volume distribution data
representing A10 vSMC cells 
cultured with 0 nM aphidicolin 
concentration (black) 
and model fit (red).  
(Right) Parameter estimates and 
mean estimates over the four fits",fixed.width=FALSE)
textplot(signif(Aph0tab,3))

## the volume distributions representing 50 nM aphidicolin concentration
Aph50 <- list(Aph50_a, Aph50_b, Aph50_c, Aph50_d)
## the associated cell cycle times
tAph50 <- c(tAph50_a, tAph50_b, tAph50_c, tAph50_d)   
## fit each dataset
Aph50res <- list()
Aph50tab <- matrix(ncol=2,nrow=4)
for(i in 1:length(Aph50)) {
  Aph50res[[i]] <- fitVolDist(vol=volumes_A10_vSMC, freq=Aph50[[i]],
                             r=100,sigma_r=44, t=tAph50[i]) 

  Aph50tab[i,] <- coef(Aph50res[[i]])
}
Aph50tab <- rbind(Aph50tab, colMeans(Aph50tab))
colnames(Aph50tab) <- c("r", "sigma_r")
rownames(Aph50tab) <- c(labs, "mean values")
  
## plot results 
par(mfrow=c(3,2))

for(i in 1:length(Aph50)) {
  pe <- signif(coef(Aph50res[[i]]),3)
  plot(volumes_A10_vSMC, Aph50[[i]], type="l", main= substitute(paste(
  "r: ", p1, ", ", sigma[r],": ",p2),
  list(p1=pe[1], p2=pe[2])),
  xlab = expression(paste("volume (", mu, m^3,")", sep="")),
  sub=paste("vol. dist. Aphidicolin 50 nM", labs[i]), ylab="frequency")
  
  lines(volumes_A10_vSMC, fitted(Aph50res[[i]]), col=2)
}
textplot("(Above) Volume distribution data
representing A10 vSMC cells 
cultured with 50 nM aphidicolin 
concentration (black) 
and model fit (red).  
(Right) Parameter estimates and 
mean estimates over the four fits",fixed.width=FALSE)
textplot(signif(Aph50tab,3))

## the volume distributions representing 100 nM aphidicolin concentration
Aph100 <- list(Aph100_a, Aph100_b, Aph100_c, Aph100_d)
## the associated cell cycle times
tAph100 <- c(tAph100_a, tAph100_b, tAph100_c, tAph100_d)   
## fit each dataset
Aph100res <- list()
Aph100tab <- matrix(ncol=2,nrow=4)
for(i in 1:length(Aph100)) {
  Aph100res[[i]] <- fitVolDist(vol=volumes_A10_vSMC, freq=Aph100[[i]],
                             r=100,sigma_r=44, t=tAph100[i]) 
  Aph100tab[i,] <- coef(Aph100res[[i]])
}
Aph100tab <- rbind(Aph100tab, colMeans(Aph100tab))
colnames(Aph100tab) <- c("r", "sigma_r")
rownames(Aph100tab) <- c(labs, "mean values")

## plot results 
par(mfrow=c(3,2))

for(i in 1:length(Aph100)) {
  pe <- signif(coef(Aph100res[[i]]),3)
  plot(volumes_A10_vSMC, Aph100[[i]], type="l", main= substitute(paste(
  "r: ", p1, ", ", sigma[r],": ",p2),
  list(p1=pe[1], p2=pe[2])),
  xlab = expression(paste("volume (",mu, m^3,")", sep="")),
  sub=paste("vol. dist. Aphidicolin 100 nM", labs[i]), ylab="frequency")
  
  lines(volumes_A10_vSMC, fitted(Aph100res[[i]]), col=2)
}
textplot("(Above) Volume distribution data
representing A10 vSMC cells 
cultured with 100 nM aphidicolin 
concentration (black) 
and model fit (red).  
(Right) Parameter estimates and 
mean estimates over the four fits",fixed.width=FALSE)
textplot(signif(Aph100tab,3))

#############################################################
# Fit volume distribution data for NIH3T3 cell cultures
# as described in the above referenced paper
#############################################################

## load the volume distributions in the "NIH3T3_volume_data" dataset
data("NIH3T3_volume_data")  

## the volume distributions representing NIH3T3 cells 
NIH3T3 <- list(NIH3T3_a, NIH3T3_b, NIH3T3_c, NIH3T3_d)
## the associated cell cycle times
tNIH3T3 <- c(tNIH3T3_a, tNIH3T3_b, tNIH3T3_c, tNIH3T3_d)   
## fit each dataset
NIH3T3res <- list()
NIH3T3tab <- matrix(ncol=2,nrow=4)
for(i in 1:length(NIH3T3)) {
  NIH3T3res[[i]] <- fitVolDist(vol=volumes_nih3t3, freq=NIH3T3[[i]],
                               r=100,sigma_r=44, t=tNIH3T3[i])
  NIH3T3tab[i,] <- coef(NIH3T3res[[i]])
}
NIH3T3tab <- rbind(NIH3T3tab, colMeans(NIH3T3tab))
colnames(NIH3T3tab) <- c("r", "sigma_r")
rownames(NIH3T3tab) <- c(labs, "mean values")

## plot results 
par(mfrow=c(3,2))

for(i in 1:length(NIH3T3)) {
  pe <- signif(coef(NIH3T3res[[i]]),3)
  plot(volumes_nih3t3, NIH3T3[[i]], type="l", main= substitute(paste(
  "r: ", p1, ", ", sigma[r],": ",p2),
  list(p1=pe[1], p2=pe[2])),
  xlab = expression(paste("volume (",mu, m^3,")", sep="")),
  sub=paste("vol. dist. NIH3T3", labs[i]), ylab="frequency")
  
  lines(volumes_nih3t3, fitted(NIH3T3res[[i]]), col=2)
}
textplot("(Above) Volume distribution data
representing NIH3T3 cells 
cultured under normal
conditions (black) 
and model fit (red). 
(Right) Parameter estimates and 
mean estimates over the four fits",fixed.width=FALSE)
textplot(signif(NIH3T3tab,3))

}
\keyword{optimize}

