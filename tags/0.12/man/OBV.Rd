\name{OBV}
\alias{OBV}
\title{ On Balance Volume (OBV) }
\description{
  On Balance Volume (OBV) is a measure of the money flowing into or out of a security.
  It is similar to Chaikin Accumulation / Distribution.
}
\usage{
  OBV(price, volume)
}
\arguments{
  \item{price}{ Price series to use. }
  \item{volume}{ Vector or matrix of volume observations corresponding
                 to \code{price} object. }
}
\details{
  OBV is calculated by adding(subtracting) each day's volume to a running cumulative
  total when the security's price closes higher(lower).
}
\value{
  A vector containing the OBV values.
}
\author{ Josh Ulrich }
\references{
  The following site(s) were used to code/document this indicator:\cr
  \url{http://www.fmlabs.com/reference/OBV.htm}\cr
  \url{http://www.equis.com/Customer/Resources/TAAZ?c=3&p=82}\cr
  \url{http://linnsoft.com/tour/techind/obVol.htm}\cr
  \url{http://stockcharts.com/education/IndicatorAnalysis/indic-obv.htm}\cr
}
\note{
  OBV is usually compared with the price chart of the underlying security to look
  for divergences/confirmation.
}
\seealso{
  See \code{\link{chaikin.AD}}.
}
\examples{
  data(nasdaq)
  obv <- OBV(nasdaq[,"Close"], nasdaq[,"Volume"])
}
\keyword{ ts }