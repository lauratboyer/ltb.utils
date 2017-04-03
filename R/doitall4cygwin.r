# doitall4cygwin.r
####################################################
#' Conversion of MFCL doitall from DOS to Unix format
#'
#' Converts a windows-exec doitall to a unix version, saved as input file with extension .cyg;
#' also does carriage switch from Dos to Unix format
#' @param x file name for doitall to convert
#' @param keep.condor if FALSE (the default), will remove the 3 CONDOR header lines if present
#' @keywords mfcl
#' @author Laura Tremblay-Boyer (lauratb@spc.int)
#' @export
doitall4cyg <- function(x, keep.condor=FALSE) {
    v0 <- scan(x, 'character', sep='\n')
    v2 <- gsub('nice \\$MFCL', './mfclo64', v0)
    fname <- sprintf('%s.cyg', x)
    if(!any(grepl('#!/bin/sh', v2))) {
        v2 <- c('#!/bin/sh', v2)
        message('Added first lines #!/bin/sh/n')}

    ## Look for CONDOR header (3 lines)
    cndr.check <- grepl("cd \\$_CONDOR_SCRATCH_DIR|export PATH=.:\\$PATH|export ADTMP1=.", v2)
    if(any(cndr.check)){
        message('--> CONDOR header present in file')
        if(!keep.condor) { v2 <- v2[!cndr.check]; message(' ...CONDOR header removed\n') }
    }
    if(!any(cndr.check) & keep.condor) warning('\nCONDOR header missing from file')

    ## Check for windows code ('$')
    if(any(grepl('\\$', v2))) warning("Windows syntax still present in file, search for '$'")
    cat(v2, file=fname, sep='\n')

    ## could also use dos2unix
    system(sprintf("sed -i 's/\r$//' %s", fname))
}

#cd $_CONDOR_SCRATCH_DIR
#export PATH=.:$PATH
#export ADTMP1=.
