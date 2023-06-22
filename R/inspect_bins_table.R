#' Create a table to inspect bins for controls.
#'
#' @param all_data A merged tibble of Area, Replicate, and Treatment columns for all treatments which is made by tibbleing_loop().
#' @param breaks Specify breaks in a vector like c(0,500,1000,2000,50000) #Min/3rd Qu./Mean/3rd Qu./Max
#' @param tags specify interval/bin labels in a vector like c("label1","label2","label3","label4")
#'
#' @return A table to inspect bins for controls.
#' @export
#'
#'
inspect_bins_table <- function(all_data,breaks,tags){

  var="DMSO"
  group_tags1 <- all_data %>%
    dplyr::filter(Treatment == var) %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)

  var="PosCtrl"
  group_tags2 <- all_data %>%
    filter(Treatment == var) %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)

  var="NegCtrl"
  group_tags3 <- all_data %>%
    filter(Treatment == var) %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)

  return(dplyr::bind_rows(summary(group_tags1),
                          summary(group_tags2),
                          summary(group_tags3)) %>%
           dplyr::bind_cols(Condition=c("DMSO","PosCtrl","NegCtrl"),.) %>%
           gt::gt())
}
