# timer-functions.r
#######################################################
#' start.timer() initializes a timer object to time code operations
#' @keywords timer
#' @param messg an optional message to print out when the timer is started
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' start.timer()
#
start.timer <- function (messg) {
    if (!missing(messg))
        message(messg)
    assign("timer", proc.time()[3], .GlobalEnv)
}

######################################################
#' stop.timer() stops the timer and returns the time in seconds since start.timer() was launched
#' @keywords timer
#' @export
#' @author Laura Tremblay-Boyer (laura.t.boyer@gmail.com)
#' stop.timer()
stop.timer <- function() print(proc.time()[3] - timer)
