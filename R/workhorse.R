
#' @noRd
epi_pal_c <- function(palette = "epiblue",
                      reverse = FALSE,
                      ...) {

  pal <- epipal_c[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)

}


#' @noRd
epi_pal_d <- function(palette = "main",
                      primary = "Epinion DarkBlue",
                      secondary = "Epinion WarmSand",
                      reverse = FALSE) {

  pal <- epipal_d[[palette]]

  #stopifnot(primary %in% names(pal))

  #print(names(pal))

  function(n) {

    # if (n > 2 && !is.null(primary)) {
    #   stop("Argument 'primary' does not apply with more than two levels")
    # }
    #
    # if (n > 2 && !is.null(secondary)) {
    #   stop("Argument 'secondary' does not apply with more than two levels")
    # }

    if (!is.null(primary) && !primary %in% names(pal)) {
      stop("Provided primary color is not in the Epinion color palette")
    }

    if (!is.null(secondary) && !secondary %in% names(pal)) {
      stop("Provided secondary color is not in the Epinion color palette")
    }

    if (n > 12) warning("The discrete color palette only has 12 colors.")

    if (n == 2) {

      secondary <- if (!secondary %in% names(pal)) {

        secondary

      } else {

        pal[secondary]

      }

      color_list <- c(secondary, pal[primary])

    } else {

      color_list <- pal[1:n]

    }

    color_list <- unname(unlist(color_list))

    if (reverse == FALSE) color_list else rev(color_list)

  }

}


#' @noRd
colour_epi_d <- color_epi_d


#' @noRd
colour_epi_c <- color_epi_c

