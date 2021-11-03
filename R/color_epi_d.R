#' Apply a discrete color scale to your `ggplot2` graphics
#'
#' This function applies a discrete color scale using colors from the Epinion color palette
#' @param palette a continuous color palette. Default is "main"
#' @param reverse a logical value indicating whether to reverse the color scale. Defaults to `FALSE`
#' @param primary a name of a valid Epinion color (see \link[repinion]{getcols_epi}) to be applied to the primary category. Invalid with more than three levels
#' @param secondary a name of a valid Epinion color (see \link[repinion]{getcols_epi}) to be applied to the primary category. Invalid with more than three levels
#' @param ... ...
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(am))) +
#' geom_point() +
#' color_epi_d()
#' @author Jeppe Vierø
#' @import ggplot2
#' @export

color_epi_d <- function(palette = "main",
                        primary = NULL,
                        secondary = NULL,
                        reverse = FALSE,
                        ...) {

  # functionality  to highlight selected category with "Epinion Red", add to workhorse.R

  ggplot2::discrete_scale(
    "colour", "branded",
    repinion::epi_pal_d(palette, primary, secondary, reverse),
    ...

  )

}

#' @rdname color_epi_d
#' @export

colour_epi_d <- color_epi_d
