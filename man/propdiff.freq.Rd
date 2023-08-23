\name{propdiff.freq}
\alias{propdiff.freq}
\title{Frequentist sample size determination for the difference between two binomial proportions} 
\description{The function \code{propdiff.freq} returns the required sample sizes to obtain a confidence interval of given length and confidence level for the difference between two binomial proportions.}
\usage{propdiff.freq(len, p1.estimate, p2.estimate, level = 0.95)}
\arguments{
  \item{len}{The desired total length of the confidence interval for the proportion}
  \item{p1.estimate}{A point estimate for the binomial proportion for the first population}
  \item{p2.estimate}{A point estimate for the binomial proportion for the second population}
  \item{level}{The desired level of the confidence interval (e.g., 0.95)} 
}
\details{Assume that a random sample from each of two populations will be
collected in order to estimate the difference between two independent binomial proportions.
Assume that the best point estimates for the unknown binomial proportions in the two populations are \emph{(p1.estimate, p2.estimate)}, respectively.
The function \code{propdiff.freq} returns the required sample sizes to attain the
desired length \emph{len} and confidence level \emph{level} for the confidence interval
for the difference between the two unknown proportions from a \strong{frequentist} point of view, using a normal approximation.}
\value{The required sample sizes (n1, n2) for each group given the inputs to the function.}
\references{Lemeshow S, Hosmer Jr DW, Klar J, Lwanga SK.\cr
Adequacy of Sample Size in Health Studies. Wiley and Sons, New York, 1990.
\cr\cr
Joseph L, du Berger R, and Bélisle P.\cr
Bayesian and mixed Bayesian/likelihood criteria for sample size determination\cr
Statistics in Medicine 1997;16(7):769-781.}
\author{Lawrence Joseph \email{lawrence.joseph@mcgill.ca}, Patrick Bélisle and Roxane du Berger}
\seealso{\code{\link{propdiff.acc}}, \code{\link{propdiff.modwoc}}, \code{\link{propdiff.woc}}, \code{\link{propdiff.mblacc}}, \code{\link{propdiff.mblalc}}, \code{\link{propdiff.mblmodwoc}}, \code{\link{propdiff.mblwoc}}}
\examples{propdiff.freq(len=0.01, p1.estimate=0.15, p2.estimate=0.20)}
\keyword{design}
\concept{Frequentist sample size}
\concept{Difference between two binomial proportions}