read_excel_file <- function(file_path) {
  sheet_names <- file_path |> readxl::excel_sheets()
  sheet_data <- purrr::map(sheet_names, ~ readxl::read_excel(file_path, sheet = .x, range = readxl::cell_cols("B")))
  df_list <- purrr::set_names(sheet_data, paste0('df', seq_along(sheet_data)))
  return(df_list)
}