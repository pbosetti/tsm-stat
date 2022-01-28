libs <- c("tidyverse", "glue")
for (l in libs) {
  if(!require(l, character.only = T)) {
    install.packages(l)
    library(l, character.only = T)
  }
}
rm("libs")

persone <- tribble(
  ~nome, ~cognome,
  "Paolo", "Bosetti",
  "Walter", "Beozzo"
)


for (i in seq_along(persone$nome)) {
  rmarkdown::render(
    "test_params.Rmd", 
    "pdf_document",
    output_file=glue("doc_{persone$cognome[i]}.pdf"),
    params=list(
      nome=persone$nome[i], 
      cognome=persone$cognome[i]
    )
  )
}
