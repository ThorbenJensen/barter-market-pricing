### DEMO ON HOW TO USE 'testthat' PACKAGE

library(testthat)
context("demo tests")

### TESTING DEMO ##############################################################

m <- function(a, b) {
  return(a * b)
}

# expect equals
expect_that(m(2, 3), equals(6))
expect_that(m(2, 3), equals(6 + (1e-8)))

# expect is_identical_to
#expect_that(m(2, 3), is_identical_to(6 + (1e-8)))
expect_that(m(2, 3), is_identical_to(6))

# expect errors
expect_error(m("2", "3"))
#expect_error(m(2, 3))

# custom expectation
expect_greater_10 <- function(obj) {
  expect_gt(object = obj, expected = 10)
}
#expect_greater_10(9)
#expect_greater_10(m(2,4))
expect_greater_10(m(3,4))

