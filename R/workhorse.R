
#' @noRd
epi_pal_c <- function(palette = "epiblue",
                      reverse = FALSE,
                      ...) {

  pal <- epipal_c[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)

}




