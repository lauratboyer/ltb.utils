% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file-scan.r
\name{file.scan}
\alias{file.scan}
\title{file-scan.r
Function to find a pattern in files with user-defined extension (.r by default)
Returns file name and approximate row matches if positive.}
\usage{
file.scan(pattern, dir = getwd(), fpattern = NA,
  ftype = "\\\\.r$|\\\\.R$", show.line = FALSE)
}
\arguments{
\item{pattern}{pattern to look for (can be regexp)}

\item{dir}{directory to search files in, defaults to working directory}

\item{fpattern}{file extension pattern (optional)}

\item{ftype}{defaults to R files, accepts regular expressions}

\item{show.line}{if TRUE, prints out the line where the pattern is found}
}
\description{
file-scan.r
Function to find a pattern in files with user-defined extension (.r by default)
Returns file name and approximate row matches if positive.
}
\examples{
file.scan
}
\keyword{search}
