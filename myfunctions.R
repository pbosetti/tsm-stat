mydata <- function(file) paste0("http://repos.dii.unitn.it:8080/data/", file)

`%contains%` <- function(vector, x) {
  v <- unlist(vector)
  x >= min(v) & x <= max(v)
}

tukey.plot <- function(t) {
  name <- paste("Differences in mean levels of", names(t)[1])
  t[[1]] %>% 
    data.frame %>%
    rownames_to_column("pair") %>%
      ggplot(aes(x=pair))+ 
      geom_point(aes(y=diff)) + 
      geom_linerange(aes(ymin=lwr, ymax=upr)) + 
      geom_hline(yintercept=0) + 
      labs(title=paste0((attr(t, "conf.level")*100), "% family-wise confidence level")) +
      ylab(name) + 
      xlab("") +
      coord_flip()
}
