#' Functions to clear environment
#'
#' Remove all objects from global environment default is global env
#' 
#' @param env the enironmen to clear
#'
#' @export
clear_env <- function(env = .GlobalEnv) {
  rm(list = ls(env), envir = env)
}
