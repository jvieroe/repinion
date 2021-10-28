
<!-- README.md is generated from README.Rmd. Please edit that file -->

# repinion

<!-- badges: start -->

<!-- badges: end -->

The goal of repinion is to provide Epinion employees with `ggplot2`
functionality that quickly and easily makes your graphs compliant with
the Corporate Visual Identity (CVI).

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
if(!require("devtools")) install.packages("devtools")
library(devtools)
devtools::install_github("jvieroe/repinion")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(repinion)
library(tidyverse)
#> Warning: package 'tidyverse' was built under R version 4.0.5
#> -- Attaching packages --------------------------------------- tidyverse 1.3.1 --
#> v ggplot2 3.3.5     v purrr   0.3.4
#> v tibble  3.1.4     v dplyr   1.0.7
#> v tidyr   1.1.3     v stringr 1.4.0
#> v readr   2.0.1     v forcats 0.5.1
#> Warning: package 'ggplot2' was built under R version 4.0.5
#> Warning: package 'tibble' was built under R version 4.0.5
#> Warning: package 'tidyr' was built under R version 4.0.5
#> Warning: package 'readr' was built under R version 4.0.5
#> Warning: package 'purrr' was built under R version 4.0.5
#> Warning: package 'dplyr' was built under R version 4.0.5
#> Warning: package 'stringr' was built under R version 4.0.5
#> Warning: package 'forcats' was built under R version 4.0.5
#> -- Conflicts ------------------------------------------ tidyverse_conflicts() --
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
ggplot(mtcars, aes(x = wt,
                   y = mpg,
                   color = factor(am))) +
  geom_point(size = 4,
             alpha = .85) +
  epitheme_classic(legend = T,
                   gridlines = "both") +
  color_epi_d()
```

<img src="man/figures/README-example-1.png" width="75%" style="display: block; margin: auto;" />

``` r
## basic example code
```
