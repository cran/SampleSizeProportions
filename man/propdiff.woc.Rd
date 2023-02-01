\name{propdiff.woc}
\alias{propdiff.woc}
\title{Bayesian sample size determination for the difference between two binomial proportions using the Worst Outcome Criterion} 
\description{The function \code{propdiff.woc} calculates conservative sample sizes for the difference between two binomial proportions, in the 
sense that the desired posterior credible interval coverage and length are guaranteed over all possible data sets.}
\usage{propdiff.woc(len, c1, d1, c2, d2, level = 0.95, equal = TRUE)}
\arguments{
  \item{len}{The desired total length of the posterior credible interval for the difference between the two unknown proportions}
  \item{c1}{First parameter of the Beta prior density for the binomial proportion for the first population}
  \item{d1}{Second parameter of the Beta prior density for the binomial proportion for the first population}
  \item{c2}{First parameter of the Beta prior density for the binomial proportion for the second population}
  \item{d2}{Second parameter of the Beta prior density for the binomial proportion for the second population}
  \item{level}{The fixed coverage probability of the posterior credible interval (e.g., 0.95)}
  \item{equal}{logical. Whether or not the final group sizes (n1, n2) are forced to be equal:\cr
    \tabular{llll}{
    \tab\tab when equal = TRUE,\tab final sample sizes n1 = n2;\cr
    \tab\tab when equal = FALSE,\tab final sample sizes (n1, n2) minimize the expected posterior variance given a total of n1+n2 observations\cr
    }}
}
\details{Assume that a sample from each of two populations will be
collected in order to estimate the difference between two independent binomial proportions.
Assume that the proportions have prior information in the form of 
Beta(\emph{c1}, \emph{d1}) and Beta(\emph{c2}, \emph{d2}) densities in each population, respectively.
The function \code{propdiff.woc} 
returns the required sample sizes to attain the desired length \emph{len} 
for the posterior credible interval of fixed coverage probability \emph{level} 
for the difference between the two unknown proportions.
The Worst Outcome Criterion used is conservative, 
in the sense that the posterior credible interval length \emph{len}  
is guaranteed over all possible data sets that can arise, for a fixed coverage probability \emph{level}.
\cr\cr
This function uses a fully Bayesian approach to sample size determination. 
Therefore, the desired coverages and lengths are only realized if the prior distributions input to the function
are used for final inferences. Researchers preferring to use the data only for final inferences are encouraged 
to use the Mixed Bayesian/Likelihood version of the function.}
\note{The sample sizes returned by this function are exact.
\cr\cr It is also correct to state that the coverage probability of the posterior credible interval of fixed length \emph{len} will be at least \emph{level} with the sample sizes returned.}
\value{The required sample sizes (n1, n2) for each group given the inputs to the function.}
\references{Joseph L, du Berger R, and Belisle P.\cr
Bayesian and mixed Bayesian/likelihood criteria for sample size determination\cr
Statistics in Medicine 1997;16(7):769-781.}
\author{Lawrence Joseph \email{lawrence.joseph@mcgill.ca}, Patrick Belisle and Roxane du Berger}
\seealso{\code{\link{propdiff.acc}}, \code{\link{propdiff.alc}}, \code{\link{propdiff.modwoc}}, \code{\link{propdiff.mblacc}}, \code{\link{propdiff.mblalc}}, \code{\link{propdiff.mblmodwoc}}, \code{\link{propdiff.mblwoc}}}
\examples{propdiff.woc(len=0.05, c1=3, d1=11, c2=11, d2=54)}
\keyword{design}
\concept{Bayesian sample size}
\concept{Difference between two binomial proportions}
\concept{Worst Outcome Criterion WOC}
