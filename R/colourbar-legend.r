#' bar.legend()
#'
#' Modified legend for colourbars
#' uses a version of legend() modified to work w Hershey Fonts
#' @param x: x position or keyword
#' @param y: y position if x is defined
#' @param legd: legend vector
#' @param colv: colour vector with length of legend - 1
#' @param max.pt: size of the legend symbols
#' @param max.val: optional maximum value observed if not included in the scale
#' @keywords graphics, legend
#' @export
#' @examples
#' bar.legend()
bar.legend <- function(x="topright",y=NULL,legd,colv,
                       max.pt=1,revleg=FALSE,
                       leg.title=NA,cex=1,max.val=NA,
                       horiz=FALSE,left.start=TRUE,roundleg=FALSE,
                       title.cex=1.25,bty="n", ...) {

ll=length(legd) # longueur
# format max.val
if(!missing(max.val)) {
num.sig <- max(sapply(gregexpr("[1-9]",legd),length))
max.val <- paste("max~",signif(max.val,num.sig),sep="") }
# make legend
if(!horiz){

    lt <- legend.ltb.2(x, y, legend=rep(NA,ll),bty=bty,
                       col=c(colv,"white"), cex=cex, pch=15, pt.cex=2.5*max.pt,
                       xpd=NA,  ...)

# décaler les étiquettes
pa <- ifelse(revleg,2,4) # reverse text position
step <- lt$text$y[1]-lt$text$y[2]
xpos <- ifelse(revleg,lt$rect$lef,rep(lt$text$x[1],ll))
text(xpos,lt$text$y+0.5*step,legd,
pos=ifelse(revleg,2,4),xpd=NA,cex=cex)
if(!missing(max.val)) {
text(xpos,lt$text$y[ll]-0.5*step,
max.val,pos=ifelse(revleg,2,4),xpd=NA,cex=cex)}
if(!missing(leg.title)) {
text(ifelse(revleg,lt$rect$w,lt$rect$left),
lt$rect$top + step, leg.title,
pos=pa, xpd=NA, cex=title.cex) }
}else{

    lt <- legend.ltb.2(x, y, legend=rep(NA,ll),bty=bty,
                       col=c(colv,"white"), pch=15, cex=cex, pt.cex=2.5*max.pt,
                       xpd=NA,horiz=TRUE,...)

    ypos <- lt$rect$top - lt$rect$h
    xdif <- diff(lt$text$x[1:2])
    xv <- lt$text$x#[-length(legd)]

    sh <- strheight("x", vfont=c("sans serif","plain"), cex=0.8*cex)
    if(left.start) xv <- xv - xdif
    if(roundleg) legd <- round(legd,2)
    text(xv,ypos-sh,legd,xpd=NA,cex=0.8*cex)

    if(!missing(max.val)) {

        text(last(xv),ypos-sh,max.val,xpd=NA,cex=0.8*cex, pos=4, offset=0)}
    if(!missing(leg.title)) {
        x0 <- lt$text$x[1]-1.4*xdif # xpos
        sh <- strheight("x", vfont=c("sans serif","plain"), cex=title.cex)
        text(x0, lt$rect$top + sh, leg.title, pos=4, xpd=NA, cex=title.cex)
    }

}
}

legend.ltb <- bar.legend # for back-compatibility
