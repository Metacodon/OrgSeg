#' Create a table to inspect bins for experiment controls.
#'
#' @param all_data A merged tibble of Area, Replicate, and Treatment columns for all treatments which is made by tibbleing_loop().
#' @param breaks Specify breaks in a vector like c(0,500,1000,2000,50000) #Min/3rd Qu./Mean/3rd Qu./Max .
#' @param tags Specify interval/bin labels in a vector like c("label1","label2","label3","label4").
#'
#' @return A table to inspect bins for experiment controls.
#' @export
#'
#'
inspect_bins_table <- function(all_data,breaks,tags){

  group_tags1 <- all_data[all_data[,3]=="DMSO",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)

  group_tags2 <- all_data[all_data[,3]=="PosCtrl",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)

  group_tags3 <- all_data[all_data[,3]=="NegCtrl",] %>%
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
