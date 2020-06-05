#' Airports (letiska)
#' 
#' Function returning dataframe of Slovak airports with geographic coordinates, names, and information.
#' 
#' @export
#' 
letiska <- function() {
  
  letiska_obj <- read.csv("http://ourairports.com/countries/SK/airports.csv", encoding = "UTF-8")[, c(1, 2, 3, 4, 5, 6, 7, 10, 11, 12, 14, 19)]
  
  return(letiska_obj)
  
}