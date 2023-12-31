% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tibbleing.R
\name{tibbleing}
\alias{tibbleing}
\title{Make a tibble of Area, Replicate, and Treatment columns for a treatment}
\usage{
tibbleing(data_list, index, treatment)
}
\arguments{
\item{data_list}{The data list made with read_excel_file()}

\item{index}{Replicates indices as a vector of numbers}

\item{treatment}{Name of treatment}
}
\value{
A tibble of Area, Replicate, and Treatment columns for the specified treatment
}
\description{
Make a tibble of Area, Replicate, and Treatment columns for a treatment
}
