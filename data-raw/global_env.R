# code to prepare `global_env` dataset goes here

global_env <- new.env()

# dataframe
global_env$shop <- data.frame(
  quantity = c(0, 1, 3, NA, 4),
  item = c("apples", "oj", "fruit", "banana", "milk"),
  available = c(TRUE, FALSE, FALSE, TRUE, TRUE)
)
# list with nested list
global_env$todo <- list("buy milk",
  "do laundry",
  homework = list("math", "physics", "english"),
  "do taxes"
)

# unnamed list
global_env$hw <- global_env$todo$homework

# numeric
global_env$quantity <- global_env$shop$quantity

# character
global_env$item <- global_env$shop$item

# logical
global_env$available <- global_env$shop$available

# formula
global_env$form <- y ~ x + z

# symbol
global_env$sym <- as.symbol("variable_name")

usethis::use_data(global_env, overwrite = TRUE)
