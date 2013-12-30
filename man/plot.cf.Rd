\name{plot.cf}
\alias{plot.cf}
\title{ Plot of cash flow model }
\description{

	Plots bar plot of the cash flows or NPV versus periodic rate.

}
\usage{
\method{plot}{cf}(x, type = c("bar", "npv"), ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ an object of class "cf", obtained using \code{\link{cf}}. }
  \item{type}{ type of the plot. }
  \item{\dots}{ additional arguments passed to \code{\link{barplot}} internally. }
}
\details{

	The "bar" plot displays all cash flows as bars, their cumulative sum
	as a line-plot and NPV as horizontal lines.

	The "npv" plot displays dependence between rate and NPV in range 0 - 100 percent.
	The roots (IRR values) and extremes are indicated by vertical lines.

}
\author{ Lukasz Komsta }
\seealso{ \code{\link{cf}} }
\examples{
y = cf(c(-2500,6250,-3800),1:10,2:11,4:13)
plot(y)
plot(y,type="npv")
}
\keyword{ models }
