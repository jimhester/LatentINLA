% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FitConstrainedGLLVM.R
\name{FitConstrainedGLLVM}
\alias{FitConstrainedGLLVM}
\title{Fits a GLLVM to data}
\usage{
FitConstrainedGLLVM(
  Y,
  X = NULL,
  nLVs = 1,
  family = "gaussian",
  INLAobj = FALSE,
  ...
)
}
\arguments{
\item{Y}{A data frame or matrix with the response (assuming counts at the moment)}

\item{X}{A data frame or matrix of covariates (not used yet)}

\item{nLVs}{The number of latent variables required}

\item{family}{A string indicating the likelihood family. If length 1, it gets repeated with one for each column of the data.}

\item{INLAobj}{Should the full INLA object be included in the output object?
Defaults to FALSE}

\item{...}{More arguments to be passed to inla()}
}
\value{
A list with fixed, colscores, and roweffs:
the posterior summaries for the fixed effects, the column scores and the row
effects respectively
}
\description{
Fits a GLLVM to data
}
\examples{
FitConstrainedGLLVM(matrix(1:10, ncol=5), nLVs=1, family="poisson")
}
