#' file-scan.r
#' Function to find a pattern in files with user-defined extension (.r by default)
#' Returns file name and approximate row matches if positive.
#' @param pattern pattern to look for (can be regexp)
#' @param dir directory to search files in, defaults to working directory
#' @param fpattern file extension pattern (optional)
#' @param ftype defaults to R files
#' @param show.line if TRUE, prints out the line where the pattern is found
#' @keywords search
#' @export
#' @examples
#' file.scan
file.scan <- function(pattern, dir=getwd(), fpattern=NA, ftype=".r$|.R$", show.line=FALSE) {

    nfiles <- list.files(dir,full.names=TRUE)
    if(!is.na(fpattern)) nfiles <- nfiles[grep(fpattern, nfiles)]
    if(!(ftype=="all")) nfiles <- nfiles[grep(sprintf("%s$",ftype),nfiles)]
    if(length(nfiles)==0) print("No files found")


    sfunk <- function(wf) {
        ss <- scan(wf, "character", sep="\n", blank.lines.skip=FALSE,quiet=TRUE)
        gf <- grep(pattern, ss, value=show.line)
        if(length(gf)>0) {
            return(list("filename"=wf, "row.numbers"=gf))

        }else{return(NULL)}
    }

    fs <- sapply(nfiles, sfunk)
    fs <- fs[!sapply(fs,is.null)]

    if(show.line) print(sapply(fs,'[','row.numbers'))
    return(names(fs))
}
