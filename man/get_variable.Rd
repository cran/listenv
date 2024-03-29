% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_variable.R
\name{get_variable}
\alias{get_variable}
\alias{get_variable.listenv}
\title{Get name of variable for a specific element of list environment}
\usage{
get_variable(...)

\method{get_variable}{listenv}(x, name, mustExist = FALSE, create = !mustExist, ...)
}
\arguments{
\item{x}{A list environment.}

\item{name}{The name or index of element of interest.}

\item{mustExist}{If \code{TRUE}, an error is generated if \code{name} does not exist.}

\item{create}{If \code{TRUE}, element \code{name} is created if missing.}
}
\value{
The name of the underlying variable
}
\description{
Get name of variable for a specific element of list environment
}
\keyword{internal}
