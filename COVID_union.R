library(purrr)
library(tibble)

tribble(
  ~country, ~paese,
  "Italy", "Italia",
  "Germany", "Germania",
  "Spain", "Spagna",
  "France", "Francia",
  "Portugal", "Portogallo",
  "Austria", "Austria",
  "United Kingdom", "Regno Unito",
  "World", "Mondo") %>% 
  rowwise() %>%
  pwalk( ~ rmarkdown::render(
    input = "COVID_report.Rmd",
    output_format = "pdf_document",
    output_file = paste0("report_", ..2, ".pdf"),
    params = list(country = ..1,
                  paese = ..2),
    quiet = T,
    clean = T
  ))