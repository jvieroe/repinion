
#' @noRd
epipal_c <- function(palette = "epiblue",
                     reverse = FALSE,
                     ...) {

  pal <- getcols_epi[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)

}




