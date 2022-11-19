#' Peek at Envs or Lists
#' 
#' Outputs a dataframe with name, class, length, dim for easy peeking at 
#' workspace using the console
#'
#' @param x environment or list that we would like to peak. Default is the
#' global environment
#' @export

peek <- function(x = .GlobalEnv) {
  if ("" %in% names(x)) {
    unnamed_indices <- which(names(x) %in% "")
    for (i in seq_along(unnamed_indices)) {
      index <- unnamed_indices[[i]]
      names(x)[[index]] <- as.character(unnamed_indices[[i]])
    }
  } else if (is.null(names(x))) {
    names(x) <- as.character(seq_along(x))
  }
  if (is.list(x)) {
    env_objs <- names(x)
  } else if (is.environment(x)) {
    env_objs <- ls(x)
  } else stop("x must be environment, list, or dataframe")
  name <- env_objs
  class <- get_ats(env_objs, "class", x, ", ")
  len <- get_ats(env_objs, "length", x)
  dim <- get_ats(env_objs, "dim", x, " x ")
  df <- data.frame(
    name = name,
    class = class,
    length = len,
    dim = dim
  )
  cat("Class:", class(x))
  cat("\n")
  df
}

get_ats <- function(objs, fun, x, collapse = "") {
  ats <- sapply(objs, function(obj) {
    obj <- call("$", x, obj)
    at <- eval(call(fun, obj))
    c_at <- paste(at, collapse = collapse)
    c_at
  }, USE.NAMES = F)
  ats
}

