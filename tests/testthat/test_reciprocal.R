context("reciprocal() function unit testing")


# expect_success
test_that("At least non-zero-numeric values work.", {
    num_vec <- c(-4.6, 3.4)
    expect_success(expect_identical(reciprocal(num_vec), 1/num_vec))
})


# expect_error
test_that("should be Inf for numeric 0", {
    numeric_zero <- 0
    expect_identical(reciprocal(numeric_zero), Inf)
})


# expect_error
test_that("if input string, there should be error", {
    str <- "this is a test string"
    expect_error(reciprocal(str))
})


