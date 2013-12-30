\name{summary.tvm}
\alias{summary.tvm}
\title{ Summarizing TVM model by printing its amortization table }
\description{
	Prints amortization table of TVM model.
}
\usage{
\method{summary}{tvm}(object, row = 1, ...)
}
\arguments{
  \item{object}{ an object of class "tvm", created by \code{\link{tvm}} }
  \item{row}{ a row number to make summary, default first row.}
  \item{\dots}{ additional arguments, currently ignored.}
}
\details{
	A table containing balance, interest, principal and payment for each
	step is produced and printed.
}
\author{ Lukasz Komsta }
\seealso{ \code{\link{tvm}} }
\examples{
y=tvm(pv=10000,i=10,n=10,pmt=NA)
summary(y)
}
\keyword{ models }
