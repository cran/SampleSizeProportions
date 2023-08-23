\name{propdiff.alc}
\alias{propdiff.alc}
\title{Bayesian sample size determination for the difference between two binomial proportions using the Average Length Criterion} 
\description{The function \code{propdiff.alc} returns the required sample sizes to reach a given posterior credible interval length on average for a fixed coverage probability for the difference between two binomial proportions.}
\usage{propdiff.alc(len, c1, d1, c2, d2, level = 0.95, equal = TRUE, m = 10000, mcs = 3)}
\arguments{
  \item{len}{The desired average length of the posterior credible interval for the difference between the two unknown proportions}
  \item{c1}{First prior parameter of the Beta density for the binomial proportion for the first population}
  \item{d1}{Second prior parameter of the Beta density for the binomial proportion for the first population}
  \item{c2}{First prior parameter of the Beta density for the binomial proportion for the second population}
  \item{d2}{Second prior parameter of the Beta density for the binomial proportion for the second population}
  \item{level}{The fixed coverage probability of the posterior credible interval (e.g., 0.95)}
  \item{equal}{logical. Whether or not the final group sizes (n1, n2) are forced to be equal:\cr
    \tabular{llll}{
    \tab\tab when equal = TRUE,\tab final sample sizes n1 = n2;\cr
    \tab\tab when equal = FALSE,\tab final sample sizes (n1, n2) minimize the expected posterior variance given a total of n1+n2 observations\cr
    }}
  \item{m}{The number of points simulated from the preposterior distribution of the data. For each point, the length of the highest posterior density interval of fixed coverage probability \emph{level} is estimated, in order to approximate the average length. Usually 10000 is sufficient, but one can increase this number at the expense of program running time.}
  \item{mcs}{The Maximum number of Consecutive Steps allowed in the same direction in the march towards the optimal sample size, before the result for the next upper/lower bound is cross-checked. In our experience, mcs = 3 is a good choice.}
}
\details{Assume that a sample from each of two populations will be
collected in order to estimate the difference between two independent binomial proportions.
Assume that the proportions have prior information in the form of 
Beta(\emph{c1}, \emph{d1}) and Beta(\emph{c2}, \emph{d2}) densities in each population, respectively.
The function \code{propdiff.alc} returns the required sample sizes to attain the
desired average length \emph{len} for the posterior credible interval of fixed coverage probability \emph{level} 
for the difference between the two unknown proportions.
\cr\cr
This function uses a fully Bayesian approach to sample size determination. 
Therefore, the desired coverages and lengths are only realized if the prior distributions input to the function
are used for final inferences. Researchers preferring to use the data only for final inferences are encouraged 
to use the Mixed Bayesian/Likelihood version of the function.}
\note{The sample sizes are calculated via Monte Carlo simulations, and therefore may vary from one call to the next.}
\value{The required sample sizes (n1, n2) for each group given the inputs to the function.}
\references{Joseph L, du Berger R, and Bélisle P.\cr
Bayesian and mixed Bayesian/likelihood criteria for sample size determination\cr
Statistics in Medicine 1997;16(7):769-781.}
\author{Lawrence Joseph \email{lawrence.joseph@mcgill.ca}, Patrick Bélisle and Roxane du Berger}
\seealso{\code{\link{propdiff.acc}}, \code{\link{propdiff.modwoc}}, \code{\link{propdiff.woc}}, \code{\link{propdiff.mblacc}}, \code{\link{propdiff.mblalc}}, \code{\link{propdiff.mblmodwoc}}, \code{\link{propdiff.mblwoc}}}
\examples{propdiff.alc(len=0.05, c1=3, d1=11, c2=11, d2=54)}
\keyword{design}
\concept{Bayesian sample size}
\concept{Difference between two binomial proportions}
\concept{Average Length Criterion ALC}