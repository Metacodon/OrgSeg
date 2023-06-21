#' Create a merged tibble of Area, Replicate, and Treatment columns for all treatments.
#'
#' @param data_list The data list made with read_excel_file().
#' @param index_list A list of replicates indices that can be retrieved from experiment info list made with read_exp_info().
#' @param treatments A list of all treatments that can be retrieved from experiment info list made with read_exp_info().
#'
#' @return A a merged tibble of Area, Replicate, and Treatment columns for all treatments.
#' @export
#'
#'
tibbleing_loop <- function(data_list, index_list, treatments) {
  merged_tib <- NULL
  for (i in seq_along(treatments)) {
    tib <- tibbleing(data_list, index = index_list[[i]], treatment = treatments[i])
    merged_tib <- bind_rows(merged_tib, tib)
  }
  return(merged_tib)
}
