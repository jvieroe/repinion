% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fill_epi_d.R
\name{fill_epi_d}
\alias{fill_epi_d}
\title{Apply a discrete color scale to your \code{ggplot2} graphics}
\usage{
fill_epi_d(
  palette = "usered",
  primary = NULL,
  secondary = NULL,
  reverse = FALSE,
  ...
)
}
\arguments{
\item{palette}{a discrete color palette, either "main" or "usered". Default is "usered"}

\item{primary}{a name of a valid Epinion color (see \link[repinion]{getcols_epi}) to be applied to the primary category. Invalid with more than three levels}

\item{secondary}{a name of a valid Epinion color (see \link[repinion]{getcols_epi}) to be applied to the primary category. Invalid with more than three levels}

\item{reverse}{a logical value indicating whether to reverse the color scale. Defaults to \code{FALSE}}

\item{...}{...}
}
\description{
This function applies a discrete color scale using colors from the Epinion color palette
}
\examples{
library(tidyverse)
ggplot(mtcars, aes(x = wt, y = mpg, fill = factor(am))) +
geom_point(shape = 21, color = "NA") +
fill_epi_d()
}
\author{
Jeppe Vierø
}
