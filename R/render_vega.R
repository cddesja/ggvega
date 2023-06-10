#' Render vega visualization
#' Note: this is a test function and not intended for users.
#'
#' @param x an HTML document containing an embedded JSON object
render_vega <- function(x){
  viewer <- getOption("viewer")
  viewer(x)
}
