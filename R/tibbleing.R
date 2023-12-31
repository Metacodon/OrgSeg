#' Make a tibble of Area, Replicate, and Treatment columns for a treatment
#'
#' @param data_list The data list made with read_excel_file()
#' @param index Replicates indices as a vector of numbers
#' @param treatment Name of treatment
#'
#' @return A tibble of Area, Replicate, and Treatment columns for the specified treatment
#' @export
#'
tibbleing <- function(data_list, index, treatment) {
  if(is.na(index[3])){
    merged_tib <- tibble::tibble(data_list[[index[1]]], Replicate = rep(1, nrow(data_list[[index[1]]]))) %>%
      dplyr::bind_rows(tibble::tibble(data_list[[index[2]]], Replicate = rep(2, nrow(data_list[[index[2]]])))) %>%
      tibble::add_column(Treatment = rep(treatment, nrow(.)))
  }else{
    merged_tib <- tibble::tibble(data_list[[index[1]]], Replicate = rep(1, nrow(data_list[[index[1]]]))) %>%
      dplyr::bind_rows(tibble::tibble(data_list[[index[2]]], Replicate = rep(2, nrow(data_list[[index[2]]])))) %>%
      dplyr::bind_rows(tibble::tibble(data_list[[index[3]]], Replicate = rep(3, nrow(data_list[[index[3]]])))) %>%
      tibble::add_column(Treatment = rep(treatment, nrow(.)))

  }
  merged_tib$Replicate <- as.factor(merged_tib$Replicate)
  merged_tib$Treatment <- as.factor(merged_tib$Treatment)
  return(merged_tib)
}
