#' Apply an Epinion styled theme to your `ggplot2` graphics
#'
#' This function applies a minimalist theme suitable for maps and consistent with the Epinion Corporate Visual Identity (CVI) to your `ggplot2` graphics. Add it to your `ggplot2` syntax for conistent visual outputs.
#' @param legend a logical value indicating whether a legend is included. Defaults to `TRUE` (with `legend.position` defaulting to `"bottom"`)
#' @param textcolor Color for text elements in `theme()` options. Must be either "black" or a named color from the Epinion color palette (see \link[repinion]{getcols_epi}), with or without the `"Epinion"` prefix. Default is "DarkBlue"
#' @return a CVI compliant plot
#' @examples
#' library(tidyverse)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#' geom_point() +
#' epitheme_map()
#' @author Jeppe Vierø
#' @import ggplot2 scales
#' @export

epitheme_map <- function(legend = TRUE,
                         textcolor = "DarkBlue") {


  if (textcolor == "black") {

    textcolor <- "black"

  } else if (textcolor != "black") {

    textcolor <- textcolor

    if (base::grepl("Epinion ", textcolor) == TRUE) {

      textcolor <- textcolor

    } else if (base::grepl("Epinion ", textcolor) == FALSE) {

      textcolor <- base::paste0("Epinion ", textcolor)

    }

  }


  check_theme_map(legend = legend,
                  textcolor = textcolor)


  if (textcolor == "black") {

    theme_textcolor <- "black"

  } else if (textcolor != "black") {

    theme_textcolor <- repinion::grabcol(textcolor)

  }

  p <-
    ggplot2::theme_void() +
    ggplot2::theme(strip.text = element_text(colour = theme_textcolor,
                                             face = "bold",
                                             size = 11),
                   strip.background = element_rect(color = "black",
                                                   fill = "transparent"),
                   plot.title = element_text(colour = theme_textcolor,
                                             face = "bold",
                                             size = 16),
                   plot.subtitle = element_text(colour = theme_textcolor,
                                                face = "plain",
                                                size = 14),
                   panel.background = element_rect(fill = "transparent", color = NA),
                   plot.background = element_rect(fill = "transparent", color = NA),
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

  return(pp)

}
