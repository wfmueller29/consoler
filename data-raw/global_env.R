# code to prepare `global_env` dataset goes here

global_env <- new.env()

## attach new global_env
attach(global_env)

# dataframe
shop <- data.frame(
  quantity = c(0, 1, 3, 4),
  item = c("apples", "oj", "banana", "milk"),
  available = c(TRUE, FALSE, TRUE, TRUE)
)
# list with nested list
todo <- list("buy milk",
  "do laundry",
  homework = list("math", "physics", "english"),
  "do taxes"
)

# numeric
quantity <- shop$quantity

# character
item <- shop$item

# logical
available <- shop$available


# detach env
detach(global_env)

usethis::use_data(global_env, overwrite = TRUE)
