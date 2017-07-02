### TEST 'prizing_from_observations.R'

library(testthat)
context("prizing_from_observations.R")

# import function
source("../src/prizing_from_observations.R")

# define test case
transactions <- data.frame(a = c(1, 0, 0), b = c(0, 0, 0), c = c(-1, 0, 0)) 

# expect: A and C of equal value (e.g. value of A == 1)
result <- get_exchange_rates(transactions)
value_a <- result["a",]
expect_that(value_a, equals(1))
