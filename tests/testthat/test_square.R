context("square() function unit tests")

# expect_identical
test_that("At least numeric values work.", {
    num_vec <- c(0, -4.6, 3.4)
    expect_identical(square(num_vec), num_vec^2)
})


# expect_success
test_that("logical vector test", {
    logic_vec <- c(TRUE, TRUE, FALSE)
    expect_success(expect_identical(square(logic_vec), logic_vec^2))
})


# expect_error
test_that("if input string, there should be error", {
    str <- "this is a test string"
    expect_error(square(str))
})
