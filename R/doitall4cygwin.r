#' doitall4cygwin.r
####################################################
#' doitall4cyg() converts a windows-exec doitall to a unix version
#' @param x file name for doitall to convert
#' @keywords mfcl
#' @export
#' @author Laura Tremblay-Boyer (lauratb@spc.int)
#' doitall4cyg()
doitall4cyg <- function(x) {
    v0 <- scan(x, 'character', sep='\n')
    v1 <- v0[-(1:4)]
    v2 <- gsub('nice \\$MFCL', './mfclo64', v1)
    cat(v2, file=sprintf('%s.cyg', x, sep='\n'), sep='\n')
}

