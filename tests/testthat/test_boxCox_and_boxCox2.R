context("boxCox() and boxCox2() functions unit testing")


# expect_success
test_that("Should work when numeric values satisfying: (1) x+y > 0 ; (2) lambda == 0.", {
    num_x <- 77
    num_y <- -3
    num_sum <- num_x + num_y
    expect_success(expect_identical(boxCox2(num_x,num_y),log(num_x+num_y) ))
    expect_success(expect_identical(boxCox(num_sum),log(num_sum) ))
})


# expect_error
test_that("Suppose error when x+y < 0 .", {
    num_x <- 2
    num_y <- -3
    num_sum <- num_x + num_y
    expect_success(expect_identical(boxCox2(num_x,num_y), NULL))
    expect_success(expect_identical(boxCox(num_sum), NULL))
})



# expect_error
test_that("Suppose error if input string", {
    str <- "this is a test string"
    expect_error(boxCox2(str))
    expect_error(boxCox(str))
})


