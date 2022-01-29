# La variabile d'ambiente RSTUDIO_PANDOC deve essere impostata sulla base della 
# macchina utilizzata. Per trovare il valore giusto fare 
# Sys.getenv(RSTUDIO_PANDOC) da Rstudio (se si lancia lo script con Rscript,
# questa variabile non è definita)
Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc")
library(purrr)
library(tibble)
library(dplyr)

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