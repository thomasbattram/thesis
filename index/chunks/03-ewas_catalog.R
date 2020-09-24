## ---- load-data-03 --------------------------------

studies <- read_tsv(file.path(tab_path, "03-ewas_catalog", "clean_studies.txt"))
results <- read_tsv(file.path(tab_path, "03-ewas_catalog", "clean_results.txt"))

## ---- catalog-data-setup --------------------------------

n_pubs <- length(unique(studies$PMID)[!is.na(unique(studies$PMID))])
n_aries <- sum(studies$Consortium %in% "ARIES")
n_geo <- sum(studies$Consortium %in% "GEO")
n_geo_aries <- sum(n_aries, n_geo)

## ---- catalog-use --------------------------------
include_graphics(file.path(fig_path, "03-ewas_catalog", "using_the_catalog.pdf"))

## ---- catalog-project-workflow --------------------------------
include_graphics(file.path(fig_path, "03-ewas_catalog", "project_flowchart.pdf"))