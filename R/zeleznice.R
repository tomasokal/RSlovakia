#' Railways (zeleznice)
#' 
#' Function returning railways of Slovakia as \code{sf} polygon.
#' 
#' Due to stage of package development, this data is downloaded with the package.
#' 
#' @format \code{sf} data frame with 261 rows of 3 variables + geometry:
#' 
#' \describe{
#'   \item{rail_id}{ID of rail.}
#'   \item{prevadzkova}{Operation of rail.}
#'   \item{typ}{Type of rail.}
#' }
#' 
#' @source \url{http://www.diva-gis.org/gdata}
#' 
#' @export
#' 
zeleznice <- function() {
  
  zeleznice_obj <- readRDS("DATA_RAW//zeleznice")
  
  return(zeleznice_obj)
  
}