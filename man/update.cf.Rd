\name{update.cf}
\alias{update.cf}
\title{ Update a cash flow model }
\description{
  This function changes some data in cash flow model and recalculates it.
}
\usage{
update.cf(object, flows = NULL, i = NULL, safe = NULL, rein = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{ an object of "cf" class, created by \code{\link{cf}} function. }
  \item{flows}{ new updated flows. }
  \item{i}{ a vector of new updated periodic rates.}
  \item{safe}{ a vector of new updated safe MIRR rates. }
  \item{rein}{ a vector of new updated reinvestment MIRR rates. }
  \item{\dots}{ additional arguments, currently ignored.}
}
\details{
  The function takes its first arguments, changing its given parameters, and
  returns recalculated model.
}
\value{

  An object of class "cf", see \code{link{cf}}.

}
\author{ Lukasz Komsta }
\seealso{ \code{\link{cf}} }
\examples{
y = cf(c(-2500,6250,-3800),1:10,2:11,4:13)
y
update(y,i=11:20)
}
\keyword{ models }
