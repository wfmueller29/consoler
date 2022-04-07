#' A an example environment
#'
#' This envivonment is supposed to mimic a global environemnt for examples
#' and testing so that we do not screwup current .GlobalEnv
#'
#' @format A environment with 7 objects
#' \describe{
#'   \item{shop}{a dataframe that mimics a shopping list}
#'   \item{todo}{a list that mimics a to do list. There is a list within it
#' called homework as well}
#'   \item{quantity}{a numeric}
#'   \item{item}{a character}
#'   \item{availabe}{a logical}
#'   \item{form}{a formula}
#'   \item{sym}{a symbol}
#' }
"global_env"
