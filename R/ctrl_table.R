#' Create a summary table to evaluate experiment controls.
#'
#' @param all_data A merged tibble of Area, Replicate, and Treatment columns for all treatments which is made by tibbleing_loop().
#'
#' @return A summary table of experiment controls
#' @export
#'
#'
ctrl_table <- function(all_data){

  DMSO <- all_data %>%
    dplyr::filter(Treatment == "DMSO") %>%
    dplyr::select(.,Area) %>% summary() %>%
    readr::parse_character() %>% tibble::tibble(DMSO=.)

  PosCtrl <- all_data %>%
    dplyr::filter(Treatment == "PosCtrl") %>%
    dplyr::select(.,Area) %>% summary() %>%
    readr::parse_character() %>% tibble::tibble(PosCtrl=.)

  NegCtrl <- all_data %>%
    dplyr::filter(Treatment == "NegCtrl") %>%
    dplyr::select(.,Area) %>% summary() %>%
    readr::parse_character() %>% tibble::tibble(NegCtrl=.)

  return(dplyr::bind_cols(DMSO,PosCtrl,NegCtrl) %>% gt::gt(.,caption = "Summary"))
}
