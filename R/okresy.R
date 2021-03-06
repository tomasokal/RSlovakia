#' Counties (okresy)
#' 
#' Function returning data frame of administrative units of Slovakia as \code{sf} polygons.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 79 rows of 2 variables + geometry:
#' 
#' \describe{
#'   \item{kraj}{Name of the region (kraj).}
#'   \item{okres}{Name of the county (okres).}
#' }
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#' 
#' @export
#' 
okresy <- function() {
  
  okresy_obj <- readRDS("DATA_RAW//okresy")
  
  return(okresy_obj)
  
}
