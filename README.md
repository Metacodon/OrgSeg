
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
```

Create a merged tibble of all data with 3 columns of Area, Replicate,
and Treatment:

``` r
all_data <- tibbleing_loop (data, exp_info_list$index_list, exp_info_list$treatments)
```

Create a summary table to evaluate experiment controls:

``` r
ctrl_table(all_data)
```

<div id="hyydgepazc" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#hyydgepazc table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#hyydgepazc thead, #hyydgepazc tbody, #hyydgepazc tfoot, #hyydgepazc tr, #hyydgepazc td, #hyydgepazc th {
  border-style: none;
}
&#10;#hyydgepazc p {
  margin: 0;
  padding: 0;
}
&#10;#hyydgepazc .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#hyydgepazc .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#hyydgepazc .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#hyydgepazc .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#hyydgepazc .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#hyydgepazc .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#hyydgepazc .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#hyydgepazc .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#hyydgepazc .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#hyydgepazc .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#hyydgepazc .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#hyydgepazc .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#hyydgepazc .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#hyydgepazc .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#hyydgepazc .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#hyydgepazc .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#hyydgepazc .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#hyydgepazc .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#hyydgepazc .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#hyydgepazc .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#hyydgepazc .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#hyydgepazc .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#hyydgepazc .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#hyydgepazc .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#hyydgepazc .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#hyydgepazc .gt_left {
  text-align: left;
}
&#10;#hyydgepazc .gt_center {
  text-align: center;
}
&#10;#hyydgepazc .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#hyydgepazc .gt_font_normal {
  font-weight: normal;
}
&#10;#hyydgepazc .gt_font_bold {
  font-weight: bold;
}
&#10;#hyydgepazc .gt_font_italic {
  font-style: italic;
}
&#10;#hyydgepazc .gt_super {
  font-size: 65%;
}
&#10;#hyydgepazc .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#hyydgepazc .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#hyydgepazc .gt_indent_1 {
  text-indent: 5px;
}
&#10;#hyydgepazc .gt_indent_2 {
  text-indent: 10px;
}
&#10;#hyydgepazc .gt_indent_3 {
  text-indent: 15px;
}
&#10;#hyydgepazc .gt_indent_4 {
  text-indent: 20px;
}
&#10;#hyydgepazc .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Summary</caption>
  <thead>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="DMSO">DMSO</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="PosCtrl">PosCtrl</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="NegCtrl">NegCtrl</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="DMSO" class="gt_row gt_left">Min.   : 111.9</td>
<td headers="PosCtrl" class="gt_row gt_left">Min.   :  110.0</td>
<td headers="NegCtrl" class="gt_row gt_left">Min.   : 117.4</td></tr>
    <tr><td headers="DMSO" class="gt_row gt_left">1st Qu.: 275.1</td>
<td headers="PosCtrl" class="gt_row gt_left">1st Qu.:  482.3</td>
<td headers="NegCtrl" class="gt_row gt_left">1st Qu.: 203.5</td></tr>
    <tr><td headers="DMSO" class="gt_row gt_left">Median : 544.6</td>
<td headers="PosCtrl" class="gt_row gt_left">Median : 1021.4</td>
<td headers="NegCtrl" class="gt_row gt_left">Median : 281.5</td></tr>
    <tr><td headers="DMSO" class="gt_row gt_left">Mean   : 847.6</td>
<td headers="PosCtrl" class="gt_row gt_left">Mean   : 1607.2</td>
<td headers="NegCtrl" class="gt_row gt_left">Mean   : 389.0</td></tr>
    <tr><td headers="DMSO" class="gt_row gt_left">3rd Qu.:1067.3</td>
<td headers="PosCtrl" class="gt_row gt_left">3rd Qu.: 1869.5</td>
<td headers="NegCtrl" class="gt_row gt_left">3rd Qu.: 426.8</td></tr>
    <tr><td headers="DMSO" class="gt_row gt_left">Max.   :5358.3</td>
<td headers="PosCtrl" class="gt_row gt_left">Max.   :35910.7</td>
<td headers="NegCtrl" class="gt_row gt_left">Max.   :3592.3</td></tr>
  </tbody>
  &#10;  
</table>
</div>
