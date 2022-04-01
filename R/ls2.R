
ls2 <- function(){
  env_objs <- ls(envir = .GlobalEnv)
  name <- env_objs
  class <- get_ats(env_objs, "class", ", ")
  len <- get_ats(env_objs, "length")
  dim <- get_ats(env_objs, "dim", " x ")
  df <- data.frame(
    name = name,
    class = class,
    length =  len, 
    dim = dim
  )
  print(df, row.names = F)
}

get_ats <- function(objs, fun, collapse = "") {
  ats <- sapply(objs, function(obj) {
    at <- eval(call(fun, as.symbol(obj)))
    c_at <- paste(at, collapse = collapse)
    c_at
  }, USE.NAMES = F)
  ats
}



cat_ls_env <- function(df) {
  maxl_name <- max(sapply(df$name, nchar))
  maxl_class <- max(sapply(df$class, nchar))
  maxl_length <- max(sapply(df$length, nchar))
  maxl_dim <- max(sapply(df$dim, nchar))
}
