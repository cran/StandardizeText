 \name{standardize.text}
\alias{standardize.text}
\title{
  Standardize Text
}
\description{
  Takes in a dataframe or vector containing a column of text and returns the data structure with the text standardized.
}
\usage{
standardize.text(input, input.column = NULL, standard, standard.column = NULL, regex = NULL, codes = NULL, match = FALSE, only.names = FALSE, na.rm = FALSE, suggest = "prompt", print.changes = TRUE, verbose = FALSE)
}
\arguments{
  \item{input}{
A dataframe or vector containing a column of text
}
  \item{input.column}{
The column containing text if input is a dataframe, identified by name or number; ignored if input a vector
}
  \item{standard}{
A dataframe or vector containing a column of standard text
}
  \item{standard.column}{
The column containing standard text if standard is a dataframe, identified by name or number; ignored if standard a vector
}
  \item{regex}{
An optional vector of regular expressions; if NULL regex will be generated from standard
}
  \item{codes}{
An optional vector of identified codes; if NULL codes will be generated automatically 
}
  \item{match}{
Mark true if there is a one-to-one correspondence between provided standard and provided regex
}
  \item{only.names}{
Only return a vector of standardized names
}
  \item{na.rm}{
Remove any entries whose text does not appear in the standard set 
}
  \item{suggest}{
Suggestions for inexact matches; "prompt" allows user to select desired suggestions, "auto" applies all, "none" applies none
}
  \item{print.changes}{
Print which text entries changed
}
  \item{verbose}{
Print full output, including unidentified text
}
}
\value{
If input a dataframe, returns the identical dataframe with the text column standardized; if input a vector of text, returns the standardized vector
}
\examples{
library(StandardizeText)
sample.text <- c("blue car","STOP","email","tree")
sample.std <- c("the tree","car","e-mail","stop")
sample.df <- data.frame(foo=2:5,bar=sample.text, baz=7:4, qux=sample.std)
out.a <- standardize.text(sample.text,standard=sample.std,suggest="auto")
out.b <- standardize.text(sample.df,2,sample.df,"qux",suggest="auto")
}
\keyword{standardize}
\keyword{matching}
\keyword{text}
\keyword{string}