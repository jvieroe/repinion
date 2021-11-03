#' Extract colors from the Epinion CVI color palette by their name
#'
#' This function extracts colors (in HEX codes) from the Epinion color palette by their official name
#' @param ... takes as input the name of the color(s) needed
#' @return the corresponding HEX code
#' @author Jeppe Vierø
#' @export

getcols_epi <- function(...) {

  cols <- c(...)

  if (is.null(cols))

    return (repinion::epi_cols)

  repinion::epi_cols[cols]

}
