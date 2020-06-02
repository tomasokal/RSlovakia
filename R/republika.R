#' Borders (republika)
#' 
#' Function returning boundaries of Slovakia as \code{sf} polygon.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 1 row of geometry:
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#'
#' @examples 
#' library(sf)
#' borders <- republika()
#' plot(borders, col = "blue")
#' 
#' @export
#' 
republika <- function() {
  
  republika_obj <- readRDS("DATA_RAW//republika")
  
  return(republika_obj)
  
}
