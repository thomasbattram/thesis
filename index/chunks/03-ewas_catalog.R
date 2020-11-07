## ---- load-data-03 --------------------------------

studies <- read_tsv(file.path(tab_path, "03-ewas_catalog", "studies.txt"))
results <- read_tsv(file.path(tab_path, "03-ewas_catalog", "results.txt"))

## ---- catalog-data-setup --------------------------------

pub_studies <- studies %>%
	dplyr::filter(!is.na(PMID), Author != "Battram T")

pub_results <- results %>%
	dplyr::filter(StudyID %in% pub_studies$StudyID) 

n_pubs <- length(unique(pub_studies$PMID))
n_aries <- sum(studies$Consortium %in% "ARIES" & studies$Author == "Battram T")
n_geo <- sum(studies$Consortium %in% "GEO")
n_geo_aries <- sum(n_aries, n_geo)

# geo info
geo_date <- "2020-10-12"
geo_exp_n <- 136

## ---- catalog-use --------------------------------
include_graphics(file.path(fig_path, "03-ewas_catalog", "using_the_catalog.pdf"))

## ---- catalog-project-workflow --------------------------------
include_graphics(file.path(fig_path, "03-ewas_catalog", "project_flowchart.pdf"))