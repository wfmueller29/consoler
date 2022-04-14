# unit testing for peek function

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("peek() works on envs", {
  testthat::expect_snapshot_output(
    peek(global_env)
  )
})

test_that("peek works on lists too", {
  testthat::expect_snapshot_output(
    peek(global_env$shop)
  )
})

test_that("peek() output is dataframe", {
  testthat::expect(
    class(peek(global_env)) == "data.frame",
    failure_message = "peek() output is not a dataframe"
  )
})

test_that("peek() works on unnamed lists", {
  testthat::expect_snapshot_output(
    peek(global_env$todo)
  )
})
