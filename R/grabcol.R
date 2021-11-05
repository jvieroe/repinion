#' Extract colors (HEX) from the Epinion CVI color palette by their name
#'
#' This function extracts colors (in HEX codes) from the Epinion color palette by their official name
#' @param color an Epinion color (see `names(repinion::epi_cols)`) with or without Epinion prefix
#' @return the corresponding HEX code
#' @author Jeppe Vierø
#' @export

grabcol <- function(color) {

  if(base::grepl("Epinion ", color) == TRUE) {

    color <- color

  } else if (base::grepl("Epinion ", color) == FALSE) {

    color <- paste0("Epinion ", color)

  }

  check_color_grab(color = color)

  hex <- base::getElement(repinion::getcols_epi(), color)

  return(hex)

}
