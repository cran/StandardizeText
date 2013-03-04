\name{StandardizeText-package}
\alias{StandardizeText-package}
\alias{StandardizeText}
\docType{package}
\title{
  Standardize Text
}
\description{
  Standardizes text according to a template; particularly useful for country names.
}
\details{
\tabular{ll}{
Package: \tab StandardizeText\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-3-4\cr
License: \tab GPL-3\cr
}
This package contains two main functions: standardize.text() standardizes generic text, and
standardize.countrynames() is optimized for standardizing country names.
}
\author{
David Nepomechie;
Maintainer: "Nepomechie, David Israel" <d.nepomechie@umiami.edu>
}
\keyword{standardize}
\keyword{matching}
\keyword{text}
\keyword{string}
\keyword{country}
\keyword{names}
\examples{
library(StandardizeText)
sample.text <- c("blue car","STOP","email","tree")
sample.std <- c("the tree","car","e-mail","stop")
sample.df <- data.frame(foo=2:5,bar=sample.text, baz=7:4, qux=sample.std)
out.a <- standardize.text(sample.text,standard=sample.std,suggest="auto")
out.b <- standardize.text(sample.df,2,sample.df,"qux",suggest="auto")
}
