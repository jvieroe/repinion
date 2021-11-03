#' Apply a continuous color scale to your `ggplot2` graphics
#'
#' This function applies a continuous color scale using colors from the Epinion color palette
#' @param palette a continuous color palette. Default is "epiblue"
#' @param reverse A logical value indicating whether to reverse the color scale. Defaults to `FALSE`
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = disp)) +
#' geom_point() +
#' color_epi_c()
#' @author Jeppe Vierø
#' @import ggplot2
#' @export

color_epi_c <- function(palette = "epiblue",
                        reverse = FALSE,
                        ...) {

  check_col_c(palette = palette,
              reverse = reverse)

  pal <- repinion::epi_pal_c(palette = palette, reverse = reverse)

  ggplot2::scale_color_gradientn(colours = pal(256), ...)


}



#' @rdname color_epi_c
#' @export

colour_epi_c <- color_epi_c
