## ---- load-data-03 --------------------------------

studies <- read_tsv(file.path(tab_path, "03-ewas_catalog", "clean_studies.txt"))
results <- read_tsv(file.path(tab_path, "03-ewas_catalog", "clean_results.txt"))

catalog_cap <- "Using the EWAS catalog. 
At the top of the figures is the home page URL, ewascatalog.org. 
Below that are examples of three types of searches possible: 
1. CpG sites, 2. genes and 3. traits. 
Finally, the results are displayed after searching the catalog for “Depression”. 
Circled in red is the download button, this button enables the user to download the results of their search as a tab-separated value file. 
This file will contain the information shown on the website as well as additional analysis information."

## ---- catalog-data-setup --------------------------------

n_pubs <- length(unique(studies$PMID)[!is.na(unique(studies$PMID))])
n_aries <- sum(studies$Consortium %in% "ARIES")
n_geo <- sum(studies$Consortium %in% "GEO")
n_geo_aries <- sum(n_aries, n_geo)

## ---- catalog-use --------------------------------
include_graphics(file.path(fig_path, "03-ewas_catalog", "using_the_catalog.pdf"))

## ---- catalog-project-workflow --------------------------------
include_graphics(file.path(fig_path, "03-ewas_catalog", "project_flowchart.pdf"))