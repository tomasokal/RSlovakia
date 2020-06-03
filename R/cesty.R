#' Roads (cesty)
#' 
#' Function returning roads of Slovakia as \code{sf} polygon.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 430 row of 3 variables + geometry:
#' 
#' \describe{
#'   \item{oddelovac}{Median type of road.}
#'   \item{trasa}{Route (primary or unknown).}
#'   \item{typ}{Type of road}
#' }
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#'
#' @examples 
#' library(sf)
#' roads <- cesty()
#' plot(roads)
#' 
#' @export
#' 
cesty <- function() {
  
  cesty_obj <- readRDS("DATA_RAW//cesty")
  
  return(cesty_obj)
  
}