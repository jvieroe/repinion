
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

ggplot(mtcars, aes(x = wt,
                   y = mpg,
                   color = factor(am))) +
  geom_point(size = 5,
             alpha = .95) +
  epitheme_classic(legend = T,
                   gridlines = "both") +
  color_epi_d()
```

<img src="man/figures/README-example-1.png" width="75%" style="display: block; margin: auto;" />
