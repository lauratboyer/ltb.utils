# stopTimer.r
#######################################################
#' stopTimer() stops the timer and returns the time in seconds since start_timer() was launched
#' @keywords timer
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' stopTimer()
stopTimer <- function() print(proc.time()[3] - timer)


