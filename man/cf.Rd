\name{cf}
\alias{cf}
\alias{print.cf}
\title{ Cash Flow model }
\description{

Calculates a Cash Flow model from a vector of flows.

}
\usage{
cf(x, i = NULL, safe = NULL, rein = safe)
}
\arguments{
  \item{x}{ a vector of cash flows. }
  \item{i}{ a vector of periodic rates used in calculating NPV, NFV and NUS table. }
  \item{safe}{ a vector of safe periodic rates using in calculating MIRR. }
  \item{rein}{ a vector of reinvestment periodic rates using in calculating MIRR. }
}
\details{

The negative values are money paid out, the positive values are money received in.

IRR (Internal rate of return) is calculated by solving polynomial, using
\code{\link{polyroot}} function. If IRR equation have several real solutions,
all are found.

NPV extremes are found in the same method, after obtaining first-order
derivative of IRR equation.

MIRR table and NPV table are created only if i, safe and rein are given (are not null).

}
\value{

An object of class "cf", being a list of the following compounds:

  \item{cf}{a vector of cash flows.}
  \item{mirr}{a matrix containing for each safe and reinvestment rate pair - modified
		internal rate of return values. If not calculated, has NULL value.}
  \item{tab}{a matrix containing for each periodic rate (i) - NPV, NFV and NUS value.
		If not calculated, set to NULL.}
  \item{irr}{a vector of IRR values - real rates giving NPV equal to zero. The number
                of values are dependent of sign changes in cash flow series (one or more
                real roots of polynomial).}
  \item{ext}{a vector of rate values giving extremes in NPV - maxima or minima. May have
                no values, if they are no sign changes in cash flows.}

}
\author{ Lukasz Komsta }
\seealso{ \code{\link{summary.cf}} }
\examples{
y = cf(c(-2500,6250,-3800),1:10,2:11,4:13)
y
summary(y)
plot(y)
plot(y,type="n")
}
\keyword{models}% 
