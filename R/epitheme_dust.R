#' Apply an Epinion styled theme to your `ggplot2` graphics
#'
#' This function applies a theme consistent with the Epinion Corporate Visual Identity (CVI) to your `ggplot2` graphics. Add it to your `ggplot2` syntax for conistent visual outputs.
#' @param legend a logical value indicating whether a legend is included. Defaults to `FALSE`
#' @return a CVI compliant plot
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(am))) +
#' geom_point() +
#' epitheme_classic()
#' @author Jeppe Vierø
#' @export

epitheme_dust <- function(legend = TRUE) {

  if (legend == FALSE) {

    ggplot2::theme_minimal() +
      ggplot2::theme(legend.position = "none",
                     axis.text.x = element_text(colour = "black",
                                                face = "plain",
                                                size = 12),
                     axis.text.y = element_text(colour = "black",
                                                face = "plain",
                                                size = 12),
                     axis.title.x = element_text(colour = "black",
                                                 face = "bold",
                                                 size = 14,
                                                 #vjust = -2.5,
                                                 hjust = 1,
                                                 margin = ggplot2::margin(t = 20, r = 0, b = 0, l = 0)),
                     axis.title.y = element_text(colour = "black",
                                                 face = "bold",
                                                 size = 14,
                                                 #vjust = 2.5,
                                                 hjust = 1,
                                                 margin = ggplot2::margin(t = 0, r = 20, b = 0, l = 0)),
                     strip.text = element_text(colour = "black",
                                               face = "plain",
                                               size = 12),
                     strip.background = element_rect(color = getElement(getcols_epi(), "Epinion WarmSand"),
                                                     fill = scales::alpha(getElement(getcols_epi(), "Epinion WarmSand"), 0.4)),
                     plot.title = element_text(colour = "black",
                                               face = "bold",
                                               size = 18),
                     plot.subtitle = element_text(colour = "black",
                                                  face = "plain",
                                                  size = 16)
      )

  } else if (legend == TRUE) {

    ggplot2::theme_minimal() +
      ggplot2::theme(
        legend.position = "right",
        axis.text.x = element_text(colour = "black",
                                   face = "plain",
                                   size = 12),
        axis.text.y = element_text(colour = "black",
                                   face = "plain",
                                   size = 12),
        axis.title.x = element_text(colour = "black",
                                    face = "bold",
                                    size = 14,
                                    #vjust = -2.5,
                                    hjust = 1,
                                    margin = ggplot2::margin(t = 20, r = 0, b = 0, l = 0)),
        axis.title.y = element_text(colour = "black",
                                    face = "bold",
                                    size = 14,
                                    #vjust = 2.5,
                                    hjust = 1,
                                    margin = ggplot2::margin(t = 0, r = 20, b = 0, l = 0)),
        strip.text = element_text(colour = "black",
                                  face = "plain",
                                  size = 12),
        strip.background = element_rect(color = getElement(getcols_epi(), "Epinion WarmSand"),
                                        fill = scales::alpha(getElement(getcols_epi(), "Epinion WarmSand"), 0.4)),
        plot.title = element_text(colour = "black",
                                  face = "bold",
                                  size = 18),
        plot.subtitle = element_text(colour = "black",
                                     face = "plain",
                                     size = 16)
      )

  }

}
