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
