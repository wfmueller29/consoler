test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("clear_env clears .GlobalEnv", {
          expect_equal({
            # clone global_env so that we do not delete it 
            env <- as.environment(as.list(global_env, all.names = TRUE))
            clear_env(env)
            ls(env)
          }, {
            ls(new.env())
          })
})
