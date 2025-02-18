% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FitGLLVM.R
\name{FitGLLVM}
\alias{FitGLLVM}
\title{Fits a GLLVM to data}
\usage{
FitGLLVM(Y, X = NULL, nLVs = 1, Family = "gaussian", INLAobj = FALSE, ...)
}
\arguments{
\item{Y}{A data frame or matrix with the response (assuming counts at the moment)}

\item{X}{A data frame or matrix of covariates (not used yet)}

\item{nLVs}{The number of latent variables required}

\item{Family}{A string indicating the likelihood family. If length 1, it gets repeated with one for each column of the data. For supported distributions see names(inla.models()$likelihood).}

\item{INLAobj}{Should the full INLA object be included in the output object? Defaults to \code{FALSE}}

\item{...}{More arguments to be passed to \code{inla()}}
}
\value{
A list with fixed, colscores, and roweffs, formula, Y, X, family..
the posterior summaries for the fixed effects, the column scores and the row
effects respectively
}
\description{
Fits a GLLVM to data
}
\examples{
FitGLLVM(matrix(1:10, ncol=5), nLVs=1, Family="poisson")
}
