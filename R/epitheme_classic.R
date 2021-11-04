#' Apply an Epinion styled theme to your `ggplot2` graphics
#'
#' This function applies a theme consistent with the Epinion Corporate Visual Identity (CVI) to your `ggplot2` graphics. Add it to your `ggplot2` syntax for conistent visual outputs.
#' @param legend a logical value indicating whether a legend is included. Defaults to `TRUE` (with `legend.position` defaulting to `"bottom"`)
#' @param gridlines Include gridlines? Options are `"both"`, `"none"`, `"x"` (for vertical), and `"y"` (for horizontal). Default is `"none"`
#' @param textcolor Color for text elements in `theme()` options. Must be either "black" or a named color from the Epinion color palette (see \link[repinion]{getcols_epi}), include only the color name, not the `"Epinion"` prefix. Default is "black"
#' @return a CVI compliant plot
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#' geom_point() +
#' epitheme_classic()
#' @author Jeppe Vierø
#' @import ggplot2 scales
#' @export

epitheme_classic <- function(legend = TRUE,
                             gridlines = "none",
                             textcolor = "DarkBlue") {

  check_theme(legend = legend,
              gridlines = gridlines,
              textcolor = textcolor)


  if (textcolor == "black") {

    theme_textcolor <- "black"

  } else if (textcolor != "black") {

    theme_textcolor <- getElement(repinion::getcols_epi(), paste0("Epinion ",
                                                        textcolor))

  }

  p <-
    ggplot2::theme_classic() +
    ggplot2::theme(axis.text.x = element_text(colour = theme_textcolor,
                                              face = "plain",
                                              size = 10),
                   axis.text.y = element_text(colour = theme_textcolor,
                                              face = "plain",
                                              size = 10),
                   axis.title.x = element_text(colour = theme_textcolor,
                                               face = "plain",
                                               size = 11,
                                               #vjust = -2.5,
                                               hjust = 0.5,
                                               margin = ggplot2::margin(t = 10, r = 0, b = 0, l = 0)),
                   axis.title.y = element_text(colour = theme_textcolor,
                                               face = "plain",
                                               size = 11,
                                               #vjust = 2.5,
                                               hjust = 0.5,
                                               margin = ggplot2::margin(t = 0, r = 10, b = 0, l = 0)),
                   strip.text = element_text(colour = theme_textcolor,
                                             face = "plain",
                                             size = 11),
                   strip.background = element_rect(color = getElement(repinion::getcols_epi(), "Epinion WarmSand"),
                                                   fill = scales::alpha(getElement(repinion::getcols_epi(), "Epinion WarmSand"), 0.4)),
                   plot.title = element_text(colour = theme_textcolor,
                                             face = "bold",
                                             size = 16),
                   plot.subtitle = element_text(colour = theme_textcolor,
                                                face = "plain",
                                                size = 14),
                   axis.ticks.x = element_blank(),
                   axis.ticks.y = element_blank(),
                   panel.background = element_rect(fill = "transparent"),
                   plot.background = element_rect(fill = "transparent", color = NA),
                   #panel.grid.major = element_blank(),
                   #panel.grid.minor = element_blank(),
                   legend.background = element_rect(color = "transparent",
                                                    fill = "transparent"),
                   legend.box.background = element_rect(color = "transparent",
                                                        fill = "transparent")
    )


  if (legend == TRUE) {

    pp <- p +
      ggplot2::theme(legend.position = "bottom")

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
