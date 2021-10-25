
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
                      primary = NULL, # "Epinion DarkBlue"
                      secondary = NULL, # "Epinion WarmSand"
                      reverse = FALSE) {

  pal <- epipal_d[[palette]]

  #stopifnot(primary %in% names(pal))

  #print(names(pal))

  function(n) {

    # if (n > 2 && !is.null(primary)) warning("Argument 'primary' does not apply with more than two levels and is ignored")
    #
    # if (n > 2 && !is.null(secondary)) warning("Argument 'secondary' does not apply with more than two levels and is ignored")
    #
    # if (n == 2 && secondary == primary) warning("Same color applied to both primary and secondary category")
    #
    # if (!is.null(primary) && !primary %in% names(pal)) {
    #   stop("Provided primary color is not in the Epinion color palette")
    # }
    #
    # if (!is.null(secondary) && !secondary %in% names(pal)) {
    #   stop("Provided secondary color is not in the Epinion color palette")
    # }

    #if (n > 12) warning("The discrete color palette only has 12 colors.")

    if (n == 1) {

      if (!is.null(primary) && !primary %in% names(pal)) {
        stop("Provided primary color is not in the Epinion color palette")
      }

      if (!is.null(secondary)) {
        stop("Only one level, argument 'secondary' does not apply")
      }

      primary <- pal[primary] #

      color_list <- c(pal[primary])

    }

    else if (n == 2) {

      # if (n > 2 && !is.null(primary)) warning("Argument 'primary' does not apply with more than two levels and is ignored")
      #
      # if (n > 2 && !is.null(secondary)) warning("Argument 'secondary' does not apply with more than two levels and is ignored")

      if (n == 2 && !is.null(primary) && !is.null(secondary) && secondary == primary) {
        warning("Same color applied to both primary and secondary category")
      }

      if (!is.null(primary) && !primary %in% names(pal)) {
        stop("Provided primary color is not in the Epinion color palette")
      }

      if (!is.null(secondary) && !secondary %in% names(pal)) {
        stop("Provided secondary color is not in the Epinion color palette")
      }

      # secondary <- if (!secondary %in% names(pal)) {
      #
      #   secondary
      #
      # } else {
      #
      #   pal[secondary]
      #
      # }

      primary <- pal[primary] #

      secondary <- pal[secondary] #

      color_list <- c(secondary, pal[primary])

    } else {

      if (n > 12) warning("The discrete color palette only has 12 colors.") #

      if (n > 2 && !is.null(primary)) warning("Argument 'primary' does not apply with more than two levels and is ignored") #

      if (n > 2 && !is.null(secondary)) warning("Argument 'secondary' does not apply with more than two levels and is ignored") #

      color_list <- pal[1:n]

    }

    color_list <- unname(unlist(color_list))

    if (reverse == FALSE) color_list else rev(color_list)

  }

}

