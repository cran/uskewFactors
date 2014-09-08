\name{uskewFA}
\alias{uskewFA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mixtures of 'Unrestricted' Skew-t Factor Analyzers via the EM algorithm
}
\description{
Fits a mixture of 'unrestricted' skew-t factor analyzers via the EM algorithm for estimation of model parameters}
\usage{
uskewFA(x, G, q, init=1, max.it=100)
}
\arguments{
  \item{x}{
A numeric matrix.
}
  \item{G}{
The number of mixture components to fit.
}
  \item{q}{
The number of latent factors.
}
\item{init}{
	This number controls the starting values that are used: (1) k-means, or (2) random.
}
\item{max.it}{
	The maximum number of iterations of the EM algorithm.
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
\item{map}{A vector of the maximum a posteriori group memberships.}
\item{bic}{The value of the Bayesian Information Criterion.}
\item{zhat}{The matrix of estimated probabilities of group membership.}
\item{likelihood}{A vector containing the value of the complete-data log-likelihood computed at each iteration of the EM algorithm.}
}
\references{
Murray, P.M., Browne, R.P., and McNicholas, P.D. (2014), "Mixtures of 'Unrestricted' Skew-t Factor Analyzers". Arxiv preprint arXiv:1310.6224}
\author{
Paula M. Murray, Ryan P. Browne, and Paul D. McNicholas

Maintainer: Paula M. Murray <murrapm3@math.mcmaster.ca>}
\note{
This package contains measurements on 200 Swiss banknotes: 100 genuine and 100 counterfeit. The variables are length of bill, width of left edge, width of right edge , bottom margin width and top margin width. All measurements are in millimetres. The data source is noted below. 
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
Flury, B. and Riedwyl, H. (1988). Multivariate Statistics: A practical approach. London: Chapman and Hall.
}
\examples{
\dontrun{
	data("banknote")
	x=banknote[,c(5,6)]
	results=uskewFA(x,G=2,q=1)
	results
}
}

