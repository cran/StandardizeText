\name{standardize.countrynames}
\alias{standardize.countrynames}
\title{
  Standardize Country Names
}
\description{
  Takes in a dataframe or vector containing a column of country names and returns the data structure with the names standardized.
}
\usage{
standardize.countrynames(input, input.column = NULL, standard = "default", standard.column = NULL, only.names = FALSE, na.rm = FALSE, suggest = "prompt", print.changes = TRUE, verbose = FALSE)
}
\arguments{
  \item{input}{
A dataframe or vector containing a column of country names
}
  \item{input.column}{
The column containing country names if input is a dataframe, identified by name or number; ignored if input a vector
}
  \item{standard}{
The name of an included name set (see details), or a dataframe or vector containing a column of standard names
}
  \item{standard.column}{
The column containing standard names if standard is a dataframe, identified by name or number; ignored if standard a vector or an included name set
}
  \item{only.names}{
Only return a vector of standardized names
}
  \item{na.rm}{
Remove any countries not contained in the standard set 
}
  \item{suggest}{
Suggestions for inexact matches; "prompt" allows user to select desired suggestions, "auto" applies all, "none" applies none
}
  \item{print.changes}{
Print which names changed
}
  \item{verbose}{
Print full output, including names of nonidentified countries
}
}
\details{
Included name sets
"default": Naming convention based on the ISO
"imf": International Monetary Fund names
"iso": International Standards Organization names
"pwt": Penn World Tables names
"wb": World Bank names
"who: World Health Organization names
}
\value{
If input a dataframe, returns the identical dataframe with the country names column standardized; if input a vector of country names, returns the standardized vector
}
\examples{
library(StandardizeText)
sample.names <- c("Aland Is.","Brunei Daru.","Ivory Coast","The Gambia")
sample.std <- c("brunei","aland is","gambia, the","cote divoire")
sample.df <- data.frame(foo=2:5,bar=sample.names, baz=7:4, qux=sample.std)

#Standardize vector using iso names
out.a <- standardize.countrynames(sample.names,standard="iso",suggest="auto")
#Standardize vector using provided names
out.b <- standardize.countrynames(sample.names,standard=sample.std,suggest="auto")
#Standardize dataframe using wb names
out.c <- standardize.countrynames(sample.df,2,standard="wb",suggest="auto",verbose=TRUE)
#Standardize dataframe using provided names without suggestions
out.d <- standardize.countrynames(sample.df,"bar",sample.df,"qux",suggest="none",verbose=TRUE)
}
\keyword{standardize}
\keyword{matching}
\keyword{country}
\keyword{names}