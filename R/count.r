#' count
#'
#' This function returns the number of unique value in a vector
#'
#' @param x numeric or character vector to count unique values for
#' @keywords summary statistics
#' @export
#' @examples
#' count()
count <- function(x) length(unique(x))
