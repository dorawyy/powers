context("invBoxCox() function unit testing")


# expect_success
test_that("Should work with numeric values when lambda == 0", {
    num_vec <- c(0, -4.6, 3.4)
    expect_success(expect_identical(invBoxCox(num_vec),exp(num_vec)))
})



# expect_success
test_that("Should work with numeric values when lambda != 0", {
    num_x <- 10
    num_lambda <- 3.4
    expect_success(expect_identical(invBoxCox(num_x,num_lambda), (num_lambda*num_x+1)^(1/num_lambda)))
})


# expect_error
test_that("Suppose error when input string .", {
    str <- "this is a test string"
    expect_error(invBoxCox(str))
})

