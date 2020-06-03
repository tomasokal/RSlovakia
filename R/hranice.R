#' Borders (hranice)
#' 
#' Function returning boundaries of Slovakia as \code{sf} polygon.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 1 row of geometry:
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#' 
#' @export
#' 
hranice <- function() {
  
  hranice_obj <- readRDS("DATA_RAW//republika")
  
  return(hranice_obj)
  
}
