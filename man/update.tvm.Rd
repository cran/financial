\name{update.tvm}
\alias{update.tvm}
\title{ Update time value of money model }
\description{
   Changes something declared in TVM model and recalculates NA values.
}
\usage{
\method{update}{tvm}(object, i = NULL, n = NULL, pv = NULL, fv = NULL, pmt = NULL,
	 days = NULL, adv = NULL, pyr = NULL, cyr = NULL, ...)
}
\arguments{
  \item{object}{ an object of "tvm" class used to update. }
  \item{i}{ a vector of nominal rates, as percentages. }
  \item{n}{ a vector of period numbers. }
  \item{pv}{ a vector of present values. }
  \item{fv}{ a vector of future values. }
  \item{pmt}{ a vector of payments. }
  \item{days}{ a vector of days from begin of period to make payment. 
		Default value is equivalent to END mode, 0 means BEGIN mode.}
  \item{adv}{ a vector of numbers of payments made in advance. }
  \item{pyr}{ a vector of numbers of payments per year. }
  \item{cyr}{ a vector of numbers of compounding periods per year.}
  \item{\dots}{ additional arguments, currently ignored.}
}
\details{

	NA values must be REDECLARED in updating process, because TVM
        object cannot remember what parameters were NA!

}
\value{

	An updated object of "tvm" class, see \code{\link{tvm}}

}
\author{ Lukasz Komsta }
\seealso{ \code{\link{tvm}}}
\examples{
y=tvm(pv=10000,i=1:10,n=10,pmt=NA)
update(y,pmt=-1000,n=NA)
}
\keyword{ models }
