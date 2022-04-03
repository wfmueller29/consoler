#' Sum NA's in data.frame
#'
#' @param data the dataframe we would like to check for NA values
check_na <- function(data) {
  apply(apply(data, 2, is.na), 2, sum)
}
