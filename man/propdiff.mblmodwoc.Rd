\name{propdiff.mblmodwoc}
\alias{propdiff.mblmodwoc}
\title{Bayesian sample size determination for the difference between two binomial proportions using the Mixed Bayesian/Likelihood Modified Worst Outcome Criterion} 
\description{The function \code{propdiff.mblmodwoc} uses a mixed Bayesian/likelihood approach to
determine conservative sample sizes for the difference between two binomial proportions, in the sense that the desired posterior credible interval coverage and length are guaranteed 
over a given proportion of data sets that can arise according to the prior information.}
\usage{propdiff.mblmodwoc(len, c1, d1, c2, d2, level = 0.95, worst.level = 0.95)}
\arguments{
  \item{len}{The desired total length of the posterior credible interval for the difference between the two unknown proportions}
  \item{c1}{First prior parameter of the Beta density for the binomial proportion for the first population}
  \item{d1}{Second prior parameter of the Beta density for the binomial proportion for the first population}
  \item{c2}{First prior parameter of the Beta density for the binomial proportion for the second population}
  \item{d2}{Second prior parameter of the Beta density for the binomial proportion for the second population}
  \item{level}{The fixed coverage probability of the posterior credible interval (e.g., 0.95)}
  \item{worst.level}{The probability that the length of the posterior credible interval of fixed coverage probability \emph{level} will be at most \emph{len}}
}
\details{Assume that a sample from each of two populations will be
collected in order to estimate the difference between two independent binomial proportions.
Assume that the proportions have prior information in the form of 
Beta(\emph{c1}, \emph{d1}) and Beta(\emph{c2}, \emph{d2}) densities in each population, respectively.
The function \code{propdiff.mblmodwoc} 
returns the required sample sizes to attain the desired length \emph{len} 
for the posterior credible interval of fixed coverage probability \emph{level} 
for the difference between the two unknown proportions.
The Modified Worst Outcome Criterion used is conservative, in the sense that the posterior credible interval 
length \emph{len} is guaranteed over the \emph{worst.level} proportion of all 
possible data sets that can arise according to the prior information, for a fixed coverage probability \emph{level}.
\cr\cr This function uses a Mixed Bayesian/Likelihood (MBL) approach. 
MBL  approaches use the prior information to derive the predictive distribution
of the data, but uses only the likelihood function for final inferences.
This approach is intended to satisfy investigators who recognize that prior
information is important for planning purposes but prefer to base final
inferences only on the data.}
\note{The sample sizes returned by this function are exact.
\cr\cr It is also correct to state that the coverage probability of the posterior credible interval of fixed length \emph{len} will be at least \emph{level} with probability \emph{worst.level} with the sample sizes returned.}
\value{The required sample sizes (n1, n2) for each group given the inputs to the function.}
\references{Joseph L, du Berger R, and Belisle P.\cr
Bayesian and mixed Bayesian/likelihood criteria for sample size determination\cr
Statistics in Medicine 1997;16(7):769-781.}
\author{Lawrence Joseph \email{lawrence.joseph@mcgill.ca}, Patrick Belisle and Roxane du Berger}
\seealso{\code{\link{propdiff.mblacc}}, \code{\link{propdiff.mblalc}}, \code{\link{propdiff.mblwoc}}, \code{\link{propdiff.acc}}, \code{\link{propdiff.alc}}, \code{\link{propdiff.modwoc}}, \code{\link{propdiff.woc}}}
\examples{propdiff.mblmodwoc(len=0.05, c1=3, d1=11, c2=11, d2=54, worst.level=0.95)}
\keyword{design}
\concept{Bayesian sample size}
\concept{Difference between two binomial proportions}
\concept{Mixed Bayesian/Likelihood Modified Worst Outcome Criterion MBL MODWOC}
