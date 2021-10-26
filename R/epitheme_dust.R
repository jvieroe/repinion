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

epitheme_dust <- function(legend = TRUE,
                             gridlines = "both") {

  p <-
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = element_text(colour = "black",
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


  if (legend == TRUE) {

    pp <- p +
      ggplot2::theme(legend.position = "right")

  } else if (legend == FALSE) {

    pp <- p +
      ggplot2::theme(legend.position = "none")

  }


  if (gridlines == "both") {

    ppp <- pp +
      ggplot2::theme(panel.grid.major.x = element_line(),
                     panel.grid.minor.x = element_line(),
                     panel.grid.major.y = element_line(),
                     panel.grid.minor.y = element_line())

  } else if (gridlines == "x") {

    ppp <- pp +
      ggplot2::theme(panel.grid.major.x = element_line(),
                     panel.grid.minor.x = element_line(),
                     panel.grid.major.y = element_blank(),
                     panel.grid.minor.y = element_blank())

  } else if (gridlines == "y") {

    ppp <- pp +
      ggplot2::theme(panel.grid.major.x = element_blank(),
                     panel.grid.minor.x = element_blank(),
                     panel.grid.major.y = element_line(),
                     panel.grid.minor.y = element_line())

  } else if (gridlines == "none") {

    ppp <- pp +
      ggplot2::theme(panel.grid.major.x = element_blank(),
                     panel.grid.minor.x = element_blank(),
                     panel.grid.major.y = element_blank(),
                     panel.grid.minor.y = element_blank())

  }

  return(ppp)

}
