% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_exp_info.R
\name{read_exp_info}
\alias{read_exp_info}
\title{Read the experiment information .csv file and extract the treatments and related indices.}
\usage{
read_exp_info(file_path)
}
\arguments{
\item{file_path}{Path to the experiment information .csv file.}
}
\value{
A list of treatments and related indices.
}
\description{
Read the experiment information .csv file and extract the treatments and related indices.
}
\examples{
file_path = system.file("extdata", "exp_info.csv", package = "OrgSeg")
exp_info_list <- read_exp_info(file_path)
}
