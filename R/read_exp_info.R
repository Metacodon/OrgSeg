#' Read the experiment information .csv file and extract the treatments and related indices.
#'
#' @param file_path Path to the experiment information .csv file.
#'
#' @return A list of treatments and related indices.
#' @export
#'
#' @examples
#' file_path = system.file("extdata", "exp_info.csv", package = "OrgSeg")
#' exp_info_list <- read_exp_info(file_path)
read_exp_info <- function(file_path) {
  info_df <- readr::read_csv(file_path)
  treatments <- info_df$Treatments
  index_list <- list()  # Create an empty list
  for (i in 1:nrow(info_df)) {
    i_list <- as.character(info_df[i, 2:4]) %>%
      readr::parse_double() %>%
      list()
    index_list <- append(index_list, i_list)
  }

  return(list(index_list=index_list, treatments=treatments))
}
