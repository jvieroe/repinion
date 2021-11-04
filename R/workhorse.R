
#' @import grDevices
#' @noRd
epi_pal_c <- function(palette = "epiblue",
                      reverse = FALSE,
                      ...) {

  pal <- repinion::epipal_c[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)

}


#' @noRd
check_theme <- function(legend,
                        gridlines,
                        textcolor) {

  if(!legend %in% c(TRUE, FALSE)) {
    stop("Invalid 'legend' argument provided. Must be logical")
  }

  if(!gridlines %in% c("both", "none", "x", "y")) {
    stop("Invalid 'gridlines' argument provided. Must be either 'both', 'none', 'x', or 'y'")
  }

  if(!paste0("Epinion ", textcolor) %in% c(names(repinion::epi_cols), "Epinion black")) {
    stop("Invalid 'textcolor' argument provided. Must be either 'black' or one of names(repinion::epi_cols) (without Epinion prefix)")
  }

}

#' @noRd
check_theme_map <- function(legend,
                            textcolor) {

  if(!legend %in% c(TRUE, FALSE)) {
    stop("Invalid 'legend' argument provided. Must be logical")
  }

  if(!paste0("Epinion ", textcolor) %in% c(names(repinion::epi_cols), "Epinion black")) {
    stop("Invalid 'textcolor' argument provided. Must be either 'black' or one of names(repinion::epi_cols) (without Epinion prefix)")
  }

}


check_theme_dust <- function(legend,
                             gridlines,
                             textcolor,
                             background = background) {

  if(!legend %in% c(TRUE, FALSE)) {
    stop("Invalid 'legend' argument provided. Must be logical")
  }

  if(!gridlines %in% c("both", "none", "x", "y")) {
    stop("Invalid 'gridlines' argument provided. Must be either 'both', 'none', 'x', or 'y'")
  }

  if(!paste0("Epinion ", textcolor) %in% c(names(repinion::epi_cols), "Epinion black")) {
    stop("Invalid 'textcolor' argument provided. Must be either 'black' or one of names(repinion::epi_cols) (without Epinion prefix)")
  }

  if(!background %in% c("no", "yes")) {
    stop("Invalid 'background' argument provided. Must be 'no' or 'yes'")
  }


}

#' @noRd
check_col_d <- function(primary,
                        secondary,
                        reverse) {

  if(!reverse %in% c(TRUE, FALSE)) {
    stop("Invalid 'reverse' argument provided. Must be logical")
  }

  if(!is.null(primary) && !paste0("Epinion ", primary) %in% names(repinion::epi_cols)) {
    stop("Provided 'primary' color is not in the Epinion color palette. Must be one of names(repinion::epi_cols) (without Epinion prefix)")
  }

  if(!is.null(secondary) && !paste0("Epinion ", secondary) %in% names(repinion::epi_cols)) {
    stop("Provided 'secondary' color is not in the Epinion color palette. Must be one of names(repinion::epi_cols) (without Epinion prefix)")
  }

}

#' @noRd
epi_pal_d <- function(palette = "main",
                      primary = NULL,
                      secondary = NULL,
                      reverse = FALSE) {

  check_col_d(primary = primary,
              secondary = secondary,
              reverse = reverse)

  pal <- repinion::epipal_d[[palette]]

  #stopifnot(primary %in% names(pal))

  #print(names(pal))

  function(n) {

    if (n > 11 && palette == "main") warning("The 'main' discrete Epinion color palette only has 11 colors.")

    if (n > 12 && palette == "usered") warning("The 'usered' discrete Epinion color palette only has 12 colors.")

    if (n == 2 && !is.null(primary)) {

      # check_primary_secondary(primary = primary,
      #                         secondary = secondary)

      if (is.null(secondary)) {
        stop("No secondary color provided with no default")
      }

      if (secondary == primary) warning("Same color applied to both primary and secondary category")

      if (!paste0("Epinion ", primary) %in% names(pal)) {
        stop("Provided primary color is not in the Epinion color palette. Must be one of names(repinion::epi_cols) (without Epinion prefix)")
      }

      if (!paste0("Epinion ", secondary) %in% names(pal)) {
        stop("Provided secondary color is not in the Epinion color palette. Must be one of names(repinion::epi_cols) (without Epinion prefix)")
      }

      primary <- paste0("Epinion ", primary)
      secondary <- paste0("Epinion ", secondary)

      secondary <- if (!secondary %in% names(pal)) {

        secondary

      } else {

        pal[secondary]

      }

      color_list <- c(secondary, pal[primary])

    } else {


      if (n > 2 && !is.null(primary)) warning("Argument 'primary' does not apply with more than two levels and is ignored")

      if (n > 2 && !is.null(secondary)) warning("Argument 'secondary' does not apply with more than two levels and is ignored")

      if (is.null(primary) && !is.null(secondary)){
        stop("No primary color provided with no default")
      }

      color_list <- pal[1:n]

    }

    color_list <- unname(unlist(color_list))

    if (reverse == FALSE) color_list else rev(color_list)

  }

}


#' @noRd
check_primary_secondary <- function(primary,
                                    secondary,
                                    pal = pal) {

  if (is.null(secondary)) {
    stop("No secondary color provided with no default when primary color is provided")
  }

  if (secondary == primary) warning("Same color applied to both primary and secondary category")

  if (!paste0("Epinion ", primary) %in% names(pal)) {
    stop("Provided primary color is not in the Epinion color palette. Must be one of names(repinion::epi_cols) (without Epinion prefix)")
  }

  if (!paste0("Epinion ", secondary) %in% names(pal)) {
    stop("Provided secondary color is not in the Epinion color palette. Must be one of names(repinion::epi_cols) (without Epinion prefix)")
  }

}



#' @noRd
check_col_c <- function(palette,
                        reverse) {

  if(!reverse %in% c(TRUE, FALSE)) {
    stop("Invalid 'reverse' argument provided. Must be logical")
  }

  if(!palette %in% names(repinion::epipal_c)) {
    stop("Invalid 'palette' argument provided. Must be one of names(repinion::epipal_c)")
  }

}



