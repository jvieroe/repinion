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
#' ggplot(mtcars, aes(x = wt, y = mpg, fill = factor(am))) +
#' geom_point(shape = 21, color = "NA") +
#' fill_epi_d()
#' @author Jeppe Vierø
#' @import ggplot2
#' @export

fill_epi_d <- function(palette = "main",
                       primary = NULL,
                       secondary = NULL,
                       reverse = FALSE,
                       ...) {

  ggplot2::discrete_scale(
    "fill", "branded",
    repinion::epi_pal_d(palette, primary, secondary, reverse),
    ...

  )

}
