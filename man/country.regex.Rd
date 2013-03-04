\name{country.regex}
\alias{country.regex}
\docType{data}
\title{
  Country Name Regular Expressions
}
\description{
  A data frame containing regular expressions for matching country names, where each country is
  identified by the ISO 3166-1 Alpha-2 code. Used internally by the standardize.countrynames function.
}
\usage{data(country.regex)}
\format{
  A data frame with 260 observations on the following 2 variables.
  \describe{
    \item{\code{regex}}{a character vector}
    \item{\code{code}}{a character vector}
  }
}
\examples{
data(country.regex)
}
\keyword{datasets}
