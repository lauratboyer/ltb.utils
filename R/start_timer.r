# startTimer.r
#######################################################
#' startTimer() stops the timer and returns the time in seconds since start_timer() was launched
#' @param messg an optional message to print out when the timer is started
#' @keywords timer
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' startTimer()
startTimer <- function(messg) {
    if (!missing(messg)) message(messg)
    assign("timer", proc.time()[3], .GlobalEnv)
}


