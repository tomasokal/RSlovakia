#' Regions (kraje)
#' 
#' Function returning data frame of administrative units of Slovakia as \code{sf} polygons.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 8 rows of 1 variable + geometry:
#' 
#' \describe{
#'   \item{kraj}{Name of the region (kraj).}
#' }
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#' 
#' @export
#' 
kraje <- function() {
  
  kraje_obj <- readRDS("DATA_RAW//kraje")
  
  return(kraje_obj)
  
}
