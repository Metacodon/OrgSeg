#' Create a bar plot to inspect bins for experiment controls.
#'
#' @param all_data A merged tibble of Area, Replicate, and Treatment columns for all treatments which is made by tibbleing_loop().
#' @param breaks Specify breaks in a vector like c(0,500,1000,2000,50000) #Min/3rd Qu./Mean/3rd Qu./Max .
#' @param tags Specify interval/bin labels in a vector like c("label1","label2","label3","label4").
#'
#' @return A bar plot to inspect bins for experiment controls.
#' @export
#'
#'
inspect_bins_plot <- function(all_data,breaks,tags){

  group_tags1 <- all_data[all_data[,3]=="DMSO",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)
  plot1 <- ggplot2::ggplot(data = tibble::as_tibble(group_tags1[group_tags1!="noise"]), mapping = ggplot2::aes(x=value)) +
    ggplot2::geom_bar(fill="bisque",color="white",alpha=0.7) +
    ggplot2::stat_count(geom="text", ggplot2::aes(label=sprintf("%.f",ggplot2::after_stat(count))), vjust=-0.5) +
    ggplot2::ylim(0,150) +
    ggplot2::labs(x='DMSO') +
    ggplot2::theme_minimal()

  group_tags2 <- all_data[all_data[,3]=="PosCtrl",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)
  plot2 <- ggplot2::ggplot(data = tibble::as_tibble(group_tags2[group_tags2!="noise"]), mapping = ggplot2::aes(x=value)) +
    ggplot2::geom_bar(fill="bisque",color="white",alpha=0.7) +
    ggplot2::stat_count(geom="text", ggplot2::aes(label=sprintf("%.f",ggplot2::after_stat(count))), vjust=-0.5) +
    ggplot2::ylim(0,150) +
    ggplot2::labs(x='PosCtrl') +
    ggplot2::theme_minimal()

  group_tags3 <- all_data[all_data[,3]=="NegCtrl",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)
  plot3 <- ggplot2::ggplot(data = tibble::as_tibble(group_tags3[group_tags3!="noise"]), mapping = ggplot2::aes(x=value)) +
    ggplot2::geom_bar(fill="bisque",color="white",alpha=0.7) +
    ggplot2::stat_count(geom="text", ggplot2::aes(label=sprintf("%.f",ggplot2::after_stat(count))), vjust=-0.5) +
    ggplot2::ylim(0,150) +
    ggplot2::labs(x='NegCtrl') +
    ggplot2::theme_minimal()

  return(gridExtra::grid.arrange(plot1, plot2, plot3, ncol=3))
}
