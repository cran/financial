\name{tvm}
\alias{tvm}
\alias{print.tvm}
\title{ Fitting time value of money models }
\description{
  This function fits generalized time value of money models.
}
\usage{
tvm(i = 0, n = 1, pv = 0, fv = 0, pmt = 0, days = 360/pyr, adv = 0, pyr = 12, cyr = pyr)
}
\arguments{
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
}
\details{
  In each variant (row) of arguments, one and EXACTLY one value must be set to NA,
  and this value is calculated from the others to "fit the model". For example, pv
  can be set to \code{c(10000,NA)} and pmt to \code{c(NA,-100)}. In first row pmt
  will be calculated, in the second - present value.
}
\value{
	A matrix of class "tvm" containing all the arguments (one row for each
	argument vector element).
}
\author{ Lukasz Komsta }
\examples{
y=tvm(pv=10000,i=1:10,n=10,pmt=NA)
y
update(y,pmt=-1000,pv=NA)
update(y,pmt=-1000,n=NA)
}
\keyword{ models }
