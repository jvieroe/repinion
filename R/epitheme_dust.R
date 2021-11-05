#' Apply an Epinion styled theme to your `ggplot2` graphics
#'
#' This function applies a warm theme consistent with the Epinion Corporate Visual Identity (CVI) to your `ggplot2` graphics. Add it to your `ggplot2` syntax for conistent visual outputs.
#' @param legend a logical value indicating whether a legend is included. Defaults to `TRUE` (with `legend.position` defaulting to `"bottom"`)
#' @param gridlines Include gridlines? Options are `"both"`, `"none"`, `"x"` (for vertical), and `"y"` (for horizontal). Default is `"both"`
#' @param textcolor Color for text elements in `theme()` options. Must be either "black" or a named color from the Epinion color palette (see \link[repinion]{getcols_epi}), include only the color name, not the `"Epinion"` prefix. Default is "black"
#' @param background Apply the WarmSand color to plot background? Options are "no" and "yes". Default is "no"
#' @return a CVI compliant plot
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#' geom_point() +
#' epitheme_dust()
#' @author Jeppe Vierø
#' @import ggplot2 scales
#' @export

epitheme_dust <- function(legend = TRUE,
                          gridlines = "both",
                          textcolor = "DarkBlue",
                          background = "no") {

  if (textcolor == "black") {

    textcolor <- "black"

  } else if (textcolor != "black") {

    textcolor <- textcolor

    if (base::grepl("Epinion ", textcolor) == TRUE) {

      textcolor <- textcolor

    } else if (base::grepl("Epinion ", textcolor) == FALSE) {

      textcolor <- paste0("Epinion ", textcolor)

    }

  }


  check_theme_dust(legend = legend,
                   gridlines = gridlines,
                   textcolor = textcolor,
                   background = background)


  if (textcolor == "black") {

    theme_textcolor <- "black"

  } else if (textcolor != "black") {

    theme_textcolor <- repinion::grabcol(textcolor)

  }

  p <-
    ggplot2::theme_minimal() +
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
                                             face = "bold",
                                             size = 11),
                   strip.background = element_rect(color = "black",
                                                   fill = scales::alpha(repinion::grabcol("Epinion WarmSand"),
                                                                        1.0)),
                   plot.title = element_text(colour = theme_textcolor,
                                             face = "bold",
                                             size = 16),
                   plot.subtitle = element_text(colour = theme_textcolor,
                                                face = "plain",
                                                size = 14),
                   panel.background = element_rect(color = "transparent",
                                                   fill = scales::alpha(repinion::grabcol("Epinion WarmSand"),
                                                                        1.0))
                   )


  if (legend == TRUE) {

    pp <- p +
      ggplot2::theme(legend.position = "bottom")

  } else if (legend == FALSE) {

    pp <- p +
      ggplot2::theme(legend.position = "none")

  }

  if (background == "no") {

    ppp <- pp +
      ggplot2::theme(plot.background = element_rect(fill = "transparent",
                                                    color = "transparent"),
                     legend.background = element_rect(color = "transparent",
                                                      fill = "transparent"),
                     legend.box.background = element_rect(color = "transparent",
                                                          fill = "transparent")
                     )

  } else if (background == "yes") {

    ppp <- pp +
      ggplot2::theme(plot.background = element_rect(color = "transparent",
                                                    fill = scales::alpha(repinion::grabcol("Epinion WarmSand"),
                                                                         1.0)),
                     legend.background = element_rect(color = "transparent",
                                                      fill = scales::alpha(repinion::grabcol("Epinion WarmSand"),
                                                                           1.0)),
                     legend.box.background = element_rect(color = "transparent",
                                                          fill = scales::alpha(repinion::grabcol("Epinion WarmSand"),
                                                                               1.0))
      )

  }


  if (gridlines == "both") {

    pppp <- ppp +
      ggplot2::theme(panel.grid.major.x = element_line(),
                     panel.grid.minor.x = element_line(),
                     panel.grid.major.y = element_line(),
                     panel.grid.minor.y = element_line())

  } else if (gridlines == "x") {

    pppp <- pp +
      ggplot2::theme(panel.grid.major.x = element_line(),
                     panel.grid.minor.x = element_line(),
                     panel.grid.major.y = element_blank(),
                     panel.grid.minor.y = element_blank())

  } else if (gridlines == "y") {

    pppp <- pp +
      ggplot2::theme(panel.grid.major.x = element_blank(),
                     panel.grid.minor.x = element_blank(),
                     panel.grid.major.y = element_line(),
                     panel.grid.minor.y = element_line())

  } else if (gridlines == "none") {

    pppp <- pp +
      ggplot2::theme(panel.grid.major.x = element_blank(),
                     panel.grid.minor.x = element_blank(),
                     panel.grid.major.y = element_blank(),
                     panel.grid.minor.y = element_blank())

  }

  return(pppp)

}


