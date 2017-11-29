context("cube() function unit tests")

# expect_identical
test_that("At least numeric values work.", {
    num_vec <- c(0, -4.6, 3.4)
    expect_identical(cube(num_vec), num_vec^3)
})


# expect_success
test_that("logical vector test", {
    logic_vec <- c(TRUE, TRUE, FALSE)
    expect_success(expect_identical(cube(logic_vec), logic_vec^3))
})


# expect_error
test_that("if input string, there should be error", {
    str <- "this is a test string"
    expect_error(square(str))
})
