#' Regions (kraje)
#' 
#' Function returning data frame of administrative units of Slovakia as \code{sf} polygons.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 8 row of 1 variable + geometry:
#' 
#' \describe{
#'   \item{kraj}{Name of the region (kraj).}
#' }
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#'
#' @examples 
#' library(sf)
#' regions <- kraje()
#' plot(regions, col = sf.colors(8, categorical = TRUE))
#' 
#' @export
#' 
kraje <- function() {
  
  kraje_obj <- readRDS("DATA_RAW//kraje")
  
  return(kraje_obj)
  
}
