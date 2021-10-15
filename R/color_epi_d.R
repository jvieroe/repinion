#' Apply a discrete color scale to your `ggplot2` graphics
#'
#' This function applies a discrete color scale using colors from the Epinion color palette
#' @param palette a continuous color palette. Default is "main"
#' @param reverse A logical value indicating whether to reverse the color scale. Defaults to `FALSE`
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(am))) +
#' geom_point() +
#' color_epi_d()
#' @author Jeppe Vierø
#' @export

color_epi_d <- function(palette = "main",
                        primary = "Epinion DarkBlue",
                        other = "Epinion WarmSand",
                        reverse = FALSE,
                        ...) {

  ggplot2::discrete_scale(
    "colour", "branded",
    epi_pal_d(palette, primary, other, reverse),
    ...

  )

}
