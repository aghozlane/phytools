\name{brownieREML}
\alias{brownieREML}
\title{REML version of brownie.lite}
\usage{
brownieREML(tree, x, maxit=2000, ...)
}
\arguments{
	\item{tree}{a phylogenetic tree in modified \code{"phylo"} format (see \code{\link{read.simmap}} and \code{\link{make.simmap}}).}
	\item{x}{a vector of tip values for species; \code{names(x)} should be the species names.}
	\item{maxit}{an optional integer value indicating the maximum number of iterations for optimization - may need to be increased for large trees.}
	\item{...}{optional arguments.}
}
\description{
	This function takes a modified \code{"phylo"} object with a mapped binary or multistate trait (see \code{\link{read.simmap}}) and data for a single continuously valued character.  It then uses restricted maximum likelihood (REML) to fit the Brownian rate variation ("noncensored") model of O'Meara et al. (2006; \emph{Evolution}).  This function is similar to \code{\link{brownie.lite}} but uses REML (which is faster and unbiased) instead of ML.  REML optimization takes advantage of Felsenstein's (1985) contrasts algorithm.
}
\value{
	A list with the following components:
	\item{sig2.single}{is the rate for a single rate model - this is usually the "null" model.}
	\item{logL1}{log-likelihood of the single-rate model.}
	\item{sig2.multiple}{is a length \emph{p} (for \emph{p} rates) vector of BM rates from the multi-rate model.}
	\item{logL2}{log-likelihood of the multi-rate model.}
	\item{convergence}{numerical value from \code{\link{optim}}.}
}
\references{
	Felsenstein, J. 1985. Phylogenies and the comparative method. \emph{American Naturalist}, \bold{125}, 1-15. 

	O'Meara, B. C., C. Ane, M. J. Sanderson, and P. C. Wainwright. 2006. Testing for different rates of continuous trait evolution using likelihood. \emph{Evolution}, \bold{60}, 922-933.

	Revell, L. J. (2012) phytools: An R package for phylogenetic comparative biology (and other things). \emph{Methods Ecol. Evol.}, \bold{3}, 217-223.
}
\author{Liam Revell \email{liam.revell@umb.edu}}
\seealso{
	\code{\link{brownie.lite}}, \code{\link{evol.vcv}}, \code{\link{evol.rate.mcmc}}
}
\keyword{phylogenetics}
\keyword{comparative method}
