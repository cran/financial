\name{plot.tvm}
\alias{plot.tvm}
\title{ Plot TVM models }
\description{
  Makes bar plots of TVM models.
}
\usage{
\method{plot}{tvm}(x, row = 1, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ an object of class "tvm" containing time value of money model. }
  \item{row}{ a row number in the model to plot. }
  \item{\dots}{ additional arguments passed to \code{\link{barplot}} internally.}
}
\details{
	The present value, payments and future value are plotted as bars.
	Cumulative sum of these are indicated by a line.
}
\author{ Lukasz Komsta }
\seealso{ \code{\link{tvm}} }
\examples{
y=tvm(pv=10000,i=10,n=10,pmt=NA)
plot(y)
}
\keyword{ models }
