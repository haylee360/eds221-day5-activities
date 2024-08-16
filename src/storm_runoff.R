##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##  ~ Storm runoff function  ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# impervious fraction, watershed area, Rd = 1
# V = 3630 * (0.05 + (0.9 * imperv)) * area

#' Volume of stormwater expected for a watershed
#' 
#' A function to calculate the volume of stormwater expected for a watershed given the fraction of the watershed that is considered impervious and the watershed area. The design storm rainfall depth is set to 1. 
#'
#' @param imperv a number indicating the fraction of the watershed that is considered "impervious" (unitless)
#' @param area a number indicating the watershed area (acres)
#'
#' @return a number indicating the volume of stormwater runoff (cubic feet)
#' @export
#'
#' @examples predict_runoff(.5, 300)
predict_runoff <- function(imperv, area) {
  volume <- 3630 * (0.05 + (0.9 * imperv)) * area
  return(volume)
}
