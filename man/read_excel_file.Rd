% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_excel_file.R
\name{read_excel_file}
\alias{read_excel_file}
\title{Read the OrganoSeg software output excel file.}
\usage{
read_excel_file(file_path)
}
\arguments{
\item{file_path}{Path to the OrganoSeg output excel file.}
}
\value{
A list of all excel sheets which is imported as separated tibbles.
}
\description{
Read the OrganoSeg software output excel file.
}
\examples{
file_path = system.file("extdata", "test_data.xls", package = "OrgSeg")
read_excel_file(file_path)
}
