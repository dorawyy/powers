
<!-- README.md is generated from README.Rmd. Please edit that file -->
**Note**: This R package is not mean to be "serious". It's just for teaching purposes.

`powers`
========

This is an R package that gives `sqrt()` friends by providing other power functions. Update:

--&gt; now, the package also supports Box Cox Transformations and Inverse

Installation
------------

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("dorawyy/powers")
```

Example
-------

See the vignette for more extensive use, but here's an example:

``` r
powers::reciprocal(2)
#> [1] 0.5
```

Here is an example for Box Cox transformation

``` r
powers::boxCox(1:10)
#> Warning in if ((x + y) < 0) return(NULL): the condition has length > 1 and
#> only the first element will be used
#>  [1] 0.0000000 0.6931472 1.0986123 1.3862944 1.6094379 1.7917595 1.9459101
#>  [8] 2.0794415 2.1972246 2.3025851
```

For Developers
--------------

(Again, I don't actually intend for anyone to develop this silly package, but if I did, here's what I'd write.)

Use the internal `pow` function as the machinery for the front-end functions such as `square`, `cube`, and `reciprocal`.

![](Vignette.jpg)

Newly added Box Cox transformation/inverse related functions are: `boxCox`, `boxCox2`, and `invBoxCox`
