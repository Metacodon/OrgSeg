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
