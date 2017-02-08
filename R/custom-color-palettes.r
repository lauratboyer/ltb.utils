# custom-color-palettes.r
#######################################################
#' cpue.colpal() defines a custom colour palette going from blue to
#' yellow to red for CPUE/abundance plots
#' @title Colour palette for CPUE and abundance
#' @param n number of colours in palette
#' @keywords graphics, colour palettes
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' cpue.colpal()
#
cpue.colpal <- function(n=12) {
    fb35 <- "#AC2020" #intermediate firebrick 3-4
    # other option going from neutral to red
    # colorRampPalette(c("wheat3","wheat2","orange1","indianred1","firebrick2",fb35))
    colorRampPalette(c("royalblue3","deepskyblue1","gold","orange1","indianred1","firebrick2",fb35))(n)
}

######################################################
#' res.colpal() and resid.colpal() create a colour palette going from
#' blues to reds via greys that are useful for residual mapping
#' @title Colour palettes for residuals
#' @aliases resid.colpal
#' @param n number of colours in palette
#' @keywords graphics, residuals, colour palettes
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' res.colpal()
# for residuals, want zero to be neutral colored
res.colpal <- colorRampPalette(c("royalblue4","royalblue2","deepskyblue","grey","grey95","grey95","grey","pink","indianred2","tomato3"))
resid.colpal <- colorRampPalette(c("royalblue4","royalblue2","deepskyblue","grey","grey95","grey95","grey","pink","indianred2","tomato3"))

######################################################
#' chl.colpal() creates a nice colour palette for
#' representing oceanography data like chl-a, going from deep blues to bright greens, golds and pinks
#' @title Colour palettes for chl-a
#' @param n number of colours in palette
#' @keywords graphics, oceanography, colour palettes
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' chl.colpal()
chl.colpal <- colorRampPalette(c('dodgerblue4','deepskyblue1','darkseagreen1','springgreen3','lightgoldenrod1','gold','tomato','hotpink3'))

######################################################
#' bathy.colpal() creates a nice colour palette for
#' representing oceanography data like bathymetry, going from deep blues to turquoise to light greens
#' @title Colour palettes for bathymetry
#' @param n number of colours in palette
#' @keywords graphics, oceanography, colour palettes
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' bathy.colpal()
bathy.colpal <- colorRampPalette(c("#000728", "#002650", "#005E8C", "#0096C8", "#45BCBB", "#8AE2AE", "#BCF8B9", "#DBFBDC"))

######################################################
#' jtl.colpal() creates a nice neutral colour palette
#' going from beiges to dark blues, inspired by
#' a memorable kayak ride on the lagoon
#' @title Joe's tight lycra
#' @param n number of colours in palette
#' @keywords graphics, colour palettes, Ilot Canard
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' jtl.colpal()
jtl.colpal <- colorRampPalette(c("ivory3","ivory2","lightcyan2","slategray1","lightsteelblue2",
                                 "lightsteelblue3","lightblue3", "#7EA4B2" ,"#668999",
                                 "#3C6474","#154D5C","#004153"))
