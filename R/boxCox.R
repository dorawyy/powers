#' Two Parameters Box-Cox Tranform Function
#'
#' This function calculates the two-parameters Box-Cox transformations:
#'
#' @param x the first parameter used in Box-Cox transformation
#' @param y the parameter that is estimated using the profile likelihood function
#' @param z the second parameter used in Box-Cox transformation
#'
#' @return The vector after tranforming \code{x} and \code{y} using \code{lambda} doing box-cox transformation.
#'
#' @export
boxCox2 <- function(x,y=0,lambda=0) {
    # input assertion
    if ((x+y) < 0)
        return(NULL)
    if(lambda!=0){
        return(pow(x+y,lambda)-1)/lambda
    }
    return(log(x+y))
}



#' One Parameter Box-Cox Tranform Function
#'
#' This function calculates the one-parameter Box-Cox transformation:
#'
#' @param x the vector used in Box-Cox transformation
#' @param lambda the parameter that is estimated using the profile likelihood function
#'
#' @return The vector after tranforming \code{x} using \code{lambda} doing box-cox transformation
#'
#' @export
boxCox <- function(x,lambda=0) {
    return(boxCox2(x,y=0,lambda))
}

