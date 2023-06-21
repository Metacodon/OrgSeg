
<!-- README.md is generated from README.Rmd. Please edit that file -->

# OrgSeg

<!-- badges: start -->
<!-- badges: end -->

The goal of OrgSeg package is to make the use of OrganoSeg analysis
software easier. From importing and pre-processing of the raw excel file
from the software to running analysis and plotting figures.

## Installation

You can install the development version of OrgSeg from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Metacodon/OrgSeg")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(OrgSeg)
file_path = system.file("extdata", "test_data.xls", package = "OrgSeg") # Path to the OrganoSeg output excel file. Here we've provided a example data file included in the package that you can access the path with system.file("extdata", "test_data.xls", package = "OrgSeg").
data <- read_excel_file(file_path)
```