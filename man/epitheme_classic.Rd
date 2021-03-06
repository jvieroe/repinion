% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epitheme_classic.R
\name{epitheme_classic}
\alias{epitheme_classic}
\title{Apply an Epinion styled theme to your \code{ggplot2} graphics}
\usage{
epitheme_classic(legend = TRUE, gridlines = "none", textcolor = "DarkBlue")
}
\arguments{
\item{legend}{a logical value indicating whether a legend is included. Defaults to \code{TRUE} (with \code{legend.position} defaulting to \code{"bottom"})}

\item{gridlines}{Include gridlines? Options are \code{"both"}, \code{"none"}, \code{"x"} (for vertical), and \code{"y"} (for horizontal). Default is \code{"none"}}

\item{textcolor}{Color for text elements in \code{theme()} options. Must be either "black" or a named color from the Epinion color palette (see \link[repinion]{getcols_epi}), with or without the \code{"Epinion"} prefix. Default is "DarkBlue"}
}
\value{
a CVI compliant plot
}
\description{
This function applies a theme consistent with the Epinion Corporate Visual Identity (CVI) to your \code{ggplot2} graphics. Add it to your \code{ggplot2} syntax for conistent visual outputs.
}
\examples{
library(tidyverse)
ggplot(mtcars, aes(x = wt, y = mpg)) +
geom_point() +
epitheme_classic()
}
\author{
Jeppe Vierø
}
