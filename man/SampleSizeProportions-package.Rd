\name{SampleSizeProportions-package}
\alias{SampleSizeProportions}
\docType{package}
\title{Bayesian Sample Size Determination for the Difference between Two Binomial Proportions}
\description{Calculate sample sizes based on highest posterior density intervals when comparing two binomial proportions using three different Bayesian approaches.}
\details{
\tabular{ll}{
Package: \tab SampleSizeProportions\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2023-02-01\cr
License: \tab GLP (version 2 or later)\cr
URL: \tab \url{http://www.medicine.mcgill.ca/epidemiology/Joseph/Methodological-Publications-Bayesian-Sample-Size.html}\cr
}
A set of R functions for calculating sample size requirements using three different Bayesian criteria in the context of designing an experiment
to estimate the difference between two binomial proportions. 
Functions for calculation of required sample sizes for the Average Length Criterion, 
the Average Coverage Criterion and the Worst Outcome Criterion 
in the context of binomial observations are provided.
In all cases, estimation of the difference between two binomial proportions is considered.
Functions for both the fully Bayesian and the mixed Bayesian/likelihood approaches are provided.
\cr\cr See the related package \pkg{SampleSizeMeans} for Bayesian sample sizes calculations based on highest posterior density intervals for normal means 
\cr\url{https://CRAN.R-project.org/package=SampleSizeProportions}
}
\author{Lawrence Joseph, Roxane du Berger and Patrick Belisle\cr
Maintainer: Patrick Belisle \email{patrickb.stat@gmail.com}}
\references{Joseph L, du Berger R, and Belisle P.\cr
Bayesian and mixed Bayesian/likelihood criteria for sample size determination\cr
Statistics in Medicine 1997;16(7):769-781.}
\keyword{design}
\seealso{\code{\link{propdiff.acc}}, \code{\link{propdiff.alc}}, \code{\link{propdiff.modwoc}}, \code{\link{propdiff.woc}}, \code{\link{propdiff.mblacc}}, \code{\link{propdiff.mblalc}}, \code{\link{propdiff.mblmodwoc}}, \code{\link{propdiff.mblwoc}}}
