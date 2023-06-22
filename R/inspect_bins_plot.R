inspect_bins_plot <- function(all_data,breaks,tags){

  group_tags1 <- all_data[all_data[,3]=="DMSO",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)
  plot1 <- ggplot2::ggplot(data = tibble::as_tibble(group_tags1[group_tags1!="noise"]), mapping = aes(x=value)) +
    geom_bar(fill="bisque",color="white",alpha=0.7) +
    stat_count(geom="text", aes(label=sprintf("%.f",after_stat(count))), vjust=-0.5) +
    ylim(0,150) +
    labs(x='DMSO') +
    theme_minimal()

  group_tags2 <- all_data[all_data[,3]=="PosCtrl",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)
  plot2 <- ggplot2::ggplot(data = tibble::as_tibble(group_tags2[group_tags2!="noise"]), mapping = aes(x=value)) +
    geom_bar(fill="bisque",color="white",alpha=0.7) +
    stat_count(geom="text", aes(label=sprintf("%.f",after_stat(count))), vjust=-0.5) +
    ylim(0,150) +
    labs(x='AREG') +
    theme_minimal()

  group_tags3 <- all_data[all_data[,3]=="NegCtrl",] %>%
    .[,1] %>% unlist() %>%
    as.numeric() %>%
    cut(breaks = breaks,
        include.lowest=TRUE,
        right=FALSE,
        labels=tags)
  plot3 <- ggplot2::ggplot(data = tibble::as_tibble(group_tags3[group_tags3!="noise"]), mapping = aes(x=value)) +
    geom_bar(fill="bisque",color="white",alpha=0.7) +
    stat_count(geom="text", aes(label=sprintf("%.f",after_stat(count))), vjust=-0.5) +
    ylim(0,150) +
    labs(x='Topotecan') +
    theme_minimal()

  return(gridExtra::grid.arrange(plot1, plot2, plot3, ncol=3))
}
