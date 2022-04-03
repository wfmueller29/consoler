test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("check_na snapshot", {
  expect_snapshot(check_na(global_env$shop))
})
