#' Rivers (rieky)
#' 
#' Function returning data frame of rivers of Slovakia as \code{sf} polygons.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 396 rows of 1 variable + geometry:
#' 
#' \describe{
#'   \item{rieka}{Name of the river (rieka).}
#' }
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#' 
#' @export
#' 
rieky <- function() {
  
  rieky_obj <- readRDS("DATA_RAW//rieky")
  
  return(rieky_obj)
  
}
