\name{sppv}
\alias{sppv}
\alias{spfv}
\alias{uspv}
\alias{usfv}
\title{ Single Payment or Uniform Series Present and Future Values }
\description{
  Calculate SPPV, SPFV, USPV and USFV factors from given rates and numbers of periods.
}
\usage{
sppv(i, n)
spfv(i, n)
uspv(i, n)
usfv(i, n)
}
\arguments{
  \item{i}{ a vector of rates (in percents). }
  \item{n}{ a vector of periods. }
}
\value{
	A vector of SPPV, SPFV, USPV or USFV values.
}
\author{ Lukasz Komsta }
\examples{
spfv(10,1:100)
sppv(10,1:100)
uspv(10,1:100)
usfv(10,1:100)
}
\keyword{ models }
