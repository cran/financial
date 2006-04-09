\name{ireff}
\alias{ireff}
\alias{irnom}
\title{ Effective and nominal financial rates }
\description{
  Calculates effective and nominal rates for periodic and continuous compounding.
}
\usage{
ireff(nom, p)
irnom(eff, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nom}{ a vector of nominal rates. }
  \item{eff}{ a vector of effective rates. }
  \item{p}{ a vector of times of compounding, may be Inf for continuous compounding. }
}
\value{
	A vector of nominal (irnom) or effective (ireff) rates.
}
\author{ Lukasz Komsta }
\seealso{ \code{\link{irnom}} }
\examples{
ireff(20,c(1:20,Inf))
irnom(20,c(1:20,Inf))
}
\keyword{ models }
