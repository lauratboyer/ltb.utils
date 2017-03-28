#' col2transp
#'
#' This function returns a transparent version of the input colour vector
#'
#' @param col colour vector to add transparency to
#' @param tlev transparency level desired, higher level means more transparent
#' @keywords graphics
#' @export
#' @examples
#' col2transp()
#'
col2transp <- function (col, tlev = 0.5) {
    sa <- lapply(col, function(cc) col2rgb(cc)/255)
    s2 <- sapply(sa, function(s1) rgb(s1[1], s1[2], s1[3], alpha = tlev))
}
