#' Apply a continuous color scale to your `ggplot2` graphics
#'
#' This function applies a continuous color scale using colors from the Epinion color palette
#' @param palette a continuous color palette. Default is "reds"
#' @param reverse A logical value indicating whether to reverse the color scale. Defaults to `FALSE`
#' @return ... z
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = disp)) +
#' geom_point() +
#' color_epi_c()
#' @author Jeppe Vierø
#' @export

color_epi_c <- function(palette = "reds",
                        reverse = FALSE,
                        ...) {

  pal <- epipal_c(palette = palette, reverse = reverse)

  scale_color_gradientn(colours = pal(256), ...)

}
