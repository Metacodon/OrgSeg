
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

Here is an example of running an analysis.

Read the OrganoSeg software output excel file:

``` r
library(OrgSeg) # Load the package
file_path = system.file("extdata", "test_data.xls", package = "OrgSeg") # Path to the OrganoSeg output excel file. Here we've provided an example data file included in the package that you can access the path with system.file("extdata", "test_data.xls", package = "OrgSeg").
data <- read_excel_file(file_path)
```

Read the experiment information .csv file and extract the treatments and
related indices into a list:

``` r
exp_info_path = system.file("extdata", "exp_info.csv", package = "OrgSeg") # Path to the experiment information .csv file. Here we've provided an example experiment information .csv file included in the package that you can access the path with system.file("extdata", "test_data.xls", package = "OrgSeg").
exp_info_list <- read_exp_info(exp_info_path)
#> Rows: 21 Columns: 4
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (1): Treatments
#> dbl (3): R1, R2, R3
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```
