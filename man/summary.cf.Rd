\name{summary.cf}
\alias{summary.cf}
\title{ Summarizing cash flow models }
\description{
  This function gives summary for each step in cash flow model.
}
\usage{
\method{summary}{cf}(object, flows = 2:length(object$cf), ...)
}
\arguments{
  \item{object}{ an object of "cf" class, created using \code{\link{cf}}.}
  \item{flows}{ a vector of first flow numbers to summarize, default is from first two
              flows to all flows. }
  \item{\dots}{ additional arguments, currently ignored.}
}
\details{
  Summarizing is done by printing all information for first "flows" flows. By default, the
  summary of first 2, 3, 4 ... n flows are printed.

}
\author{ Lukasz Komsta }
\seealso{ \code{\link{cf}} }
\examples{
y = cf(c(-10,5,5,5,5,5))
summary(y)
}
\keyword{ models }
