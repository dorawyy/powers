
#' Box-Cox Tranform Inverse Function
#'
#' This function calculates the Box-Cox transformation inverse:
#'
#' @param x the first parameter used in Box-Cox trannsformation
#' @param lambda the parameter that is estimated using the profile likelihood function
#'
#' @return The vector after inverse the transformation of \code{x} using \code{lambda}.
#'
#' @export
invBoxCox <- function(x, lambda=0){
    if (lambda == 0) {
        return(exp(x))
    }
    return (pow((lambda*x + 1) ,(1/lambda)))
}
