# my-ggplot-themes.r()
#' make.panel.theme returns a clean ggplot theme well suited for making nice panel plots
#'
#' @param strip.text.background.fill colour for the panel background
#' @keywords ggplot, theme, graphics
#' @export
#' @examples
#' make.panel.theme
make.panel.theme <- function(strip.text.background.fill="slategray") {
    panel.theme <- ggplot2::theme_bw() + ggplot2::theme(text=ggplot2::element_text(family="Segoe UI Light", size=12),
                                      strip.background = ggplot2::element_rect(fill=strip.text.background.fill,
                                                                      colour=strip.text.background.fill),
                                      strip.text=ggplot2::element_text(colour="white", size=12.5, vjust=0.615),
                                      panel.grid.major=ggplot2::element_blank(),
                                      legend.key=ggplot2::element_rect(colour=NA))
}
####################################################################
#' shift.ylab shifts the position of the y-axis labels in a ggplot object
#' @param ypos relative shift, default is 0.5
#' @keywords ggplot, theme, graphics
#' @export
#' @examples
#' shift.ylab
shift.ylab <- function(ypos=0.5) ggplot2::theme(axis.text.y=ggplot2::element_text(hjust=ypos))
####################################################################
## panel.theme object stored in package using devtools::use_data
panel.theme <- ggplot2::theme_bw() + ggplot2::theme(text=ggplot2::element_text(family="Segoe UI Light", size=12),
                                  strip.background = ggplot2::element_rect(fill="slategray",colour="slategray"),
                                  strip.text=ggplot2::element_text(colour="white", size=12.5, vjust=0.615),
                                  panel.grid.major=ggplot2::element_blank(),
                                  legend.key=ggplot2::element_rect(colour=NA))
