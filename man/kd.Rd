\name{kd}
\alias{kd}
\title{Kurtosis distance}
\description{This function calculates the kurtosis distance (Vidal, 2020), which is an ad-hoc measure to select the number of components to be computed in \code{\link{kffobi}} and \code{\link{pspline.kffobi}}.}
\usage{kd(fdx, hm = fdPar(fdx), pp = NULL, r = 2, centerfd = FALSE, qmin = 2, qmax = 5)}
\arguments{
\item{fdx}{a functional data object obtained from the \strong{fda} package.}
  \item{hm}{a functional parameter object, obtained from the \strong{fda} package, that defines the independent component functions to be estimated in \code{\link{kffobi}}.}
  \item{pp}{the penalty parameter to perform \code{kd} on \code{\link{pspline.kffobi}}.}
  \item{r}{a number indicating the order of the penalty to perform \code{kd} on \code{\link{pspline.kffobi}}}.
  \item{centerfd}{a logical value indicating whether the mean function has to be subtracted from each functional observation.}
  \item{qmin}{the minimum allowable \eqn{q} degree.}
  \item{qmax}{the maximum allowable \eqn{q} degree.}}
\details{The kurtosis distance (\eqn{\mathtt{KD}}) measures the degree of extremeness in an independent component coordinate space by computing the kurtosis on the independent component vectors.}

%For a fixed \eqn{q}, the kurtosis distance is defined as  \deqn{\mathtt{KD}(z_{j})=\mathrm{max}\left[\sum_{j=1}^{q}\mathrm{kurt}(z_{j})\right]-\mathrm{min}\left[\sum_{j=1}^{q}\mathrm{kurt}(z_{j})\right],} where \eqn{z_{j}}  is the vector of independent components calculated from \eqn{\int_{T}x_{i}^{st}(t)h_{j}(t)dt}. Thus, \eqn{\mathtt{KD}} is calculated from the the standardized original sample instead of the standardized principal component expansion. Then, the \code{kd} function calculates \eqn{\mathtt{KD}} for different values of \eqn{q=2,\ldots,n-1}. The user can then consider choosing a value from those amongst the first relative maxima of the vector of \eqn{\mathtt{KD}} values. If the value of \eqn{q} is increased too much, there is a risk of losing accurate estimates, as more of the independent part (noise) of the model is induced.}
\value{A vector of \eqn{\mathtt{KD}} values.}
\references{
Vidal, M. (2020). \emph{Functional Independent Component Analysis in Bioelectrical Signal Processing}. MA thesis. Universidad de Granada.
}
\author{Marc Vidal}
\seealso{\code{\link{kffobi}}}
\keyword{utilities}
