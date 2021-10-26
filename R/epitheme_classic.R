#' Apply an Epinion styled theme to your `ggplot2` graphics
#'
#' This function applies a theme consistent with the Epinion Corporate Visual Identity (CVI) to your `ggplot2` graphics. Add it to your `ggplot2` syntax for conistent visual outputs.
#' @param legend a logical value indicating whether a legend is included. Defaults to `FALSE`
#' @param gridlines Include gridlines? Options are `"both"`, `"none"`, `"x"` (for vertical), and `"y"` (for horizontal). Default is `"both"`
#' @param textcolor Color for text elements in `theme()` aesthetics. A named color from the Epinion color palette (see \link[repinion]{getcols_epi}). Include only the color name, not the `"Epinion"` prefix. Default is "Black"
#' @return a CVI compliant plot
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(am))) +
#' geom_point() +
#' epitheme_classic()
#' @author Jeppe Vierø
#' @export

epitheme_classic <- function(legend = TRUE,
                          gridlines = "both",
                          textcolor = "Black") {

  p <-
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.x = element_text(colour = getElement(getcols_epi(), paste0("Epinion ",
                                                                                        textcolor)),
                                              face = "plain",
                                              size = 12),
                   axis.text.y = element_text(colour = getElement(getcols_epi(), paste0("Epinion ",
                                                                                        textcolor)),
                                              face = "plain",
                                              size = 12),
                   axis.title.x = element_text(colour = getElement(getcols_epi(), paste0("Epinion ",
                                                                                         textcolor)),
                                               face = "bold",
                                               size = 14,
                                               #vjust = -2.5,
                                               hjust = 1,
                                               margin = ggplot2::margin(t = 20, r = 0, b = 0, l = 0)),
                   axis.title.y = element_text(colour = getElement(getcols_epi(), paste0("Epinion ",
                                                                                         textcolor)),
                                               face = "bold",
                                               size = 14,
                                               #vjust = 2.5,
                                               hjust = 1,
                                               margin = ggplot2::margin(t = 0, r = 20, b = 0, l = 0)),
                   strip.text = element_text(colour = getElement(getcols_epi(), paste0("Epinion ",
                                                                                       textcolor)),
                                             face = "plain",
                                             size = 12),
                   strip.background = element_rect(color = getElement(getcols_epi(), "Epinion WarmSand"),
                                                   fill = scales::alpha(getElement(getcols_epi(), "Epinion WarmSand"), 0.4)),
                   plot.title = element_text(colour = getElement(getcols_epi(), paste0("Epinion ",
                                                                                       textcolor)),
                                             face = "bold",
                                             size = 18),
                   plot.subtitle = element_text(colour = getElement(getcols_epi(), paste0("Epinion ",
                                                                                          textcolor)),
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
