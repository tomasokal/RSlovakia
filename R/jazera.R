#' Lakes (jazera)
#' 
#' Function returning data frame of lakes and inland water of Slovakia as \code{sf} polygons.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 13 rows of 1 variable + geometry:
#' 
#' \describe{
#'   \item{meno}{Name of the lake or inland water (jazera).}
#' }
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#' 
#' @export
#' 
jazera <- function() {
  
  jazera_obj <- readRDS("DATA_RAW//jazera")
  
  return(jazera_obj)
  
}