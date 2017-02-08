#' check.dev.size
#'
#' This function checks the size of your current graphic device
#' against width (ww) and height (hh) and reopens one of the specified
#' dimension if needed
#' @param ww desired width in inches
#' @param hh desired height in inches
#' @param use.prop if set to TRUE and height greater than 7.5, scales width and height to have height = 7.5in and maintain ww:hh proportion
#' @keywords graphics
#' @export
#' @examples
#' check.dev.size()
check.dev.size <- function (ww, hh, use.prop = FALSE) {
    if (hh > 7.5 & use.prop) {
        rt <- ww/hh
        hh <- 7.5
        ww <- hh * rt
    }
    if (dev.cur() == 1) {
        dev.new(width = ww, height = hh)
    }
    else {
        ds <- dev.size()
        if (round(ds[1], 2) != round(ww, 2) | round(ds[2], 2) !=
            round(hh, 2)) {
            dev.off()
            dev.new(width = ww, height = hh)
        }
    }
}
