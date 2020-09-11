## ---- load-data-05 --------------------------------

fig_p <- file.path(fig_path, "05-h2ewas")
tab_p <- file.path(tab_path, "05-h2ewas")

## ---- h2ewas-model-comp --------------------------------
include_graphics(file.path(fig_p, "m2_model_comparison.pdf"))

## ---- h2ewas-pheno-qc --------------------------------
include_graphics(file.path(fig_p, "m2_data_cleaning.pdf"))

## ---- h2ewas-pheno-corr-all --------------------------------
include_graphics(file.path(fig_p, "test_correlation_plot_all.png"))

## ---- h2ewas-pheno-corr-subset --------------------------------
include_graphics(file.path(fig_p, "test_correlation_plot.png"))

## ---- h2ewas-study-design --------------------------------
include_graphics(file.path(fig_p, "m2_workflow.pdf"))

## ---- h2ewas-estimates --------------------------------
include_graphics(file.path(fig_p, "model_m2_comparison.pdf"))

## ---- h2ewas-sens --------------------------------
include_graphics(file.path(fig_p, "sens_boxplots.pdf"))

## ---- h2ewas-dmp-dist --------------------------------
include_graphics(file.path(fig_p, "FOM_hit_count_distribution.pdf"))

## ---- model-testing-setup --------------------------------

mod_tests <- read_tsv(file.path(tab_p, "m2_hits_model_testing.txt"))

tidy_model_names <- tibble(model = c("ML-Pois", "NB", "Hurdle-NB", "Hurdle",
									 "ZINB", "ZIP"), 
						   full_name = c("Poisson", "Negative binomial", "Hurdle-negative binomial", 
						   				 "Hurdle", "Zero-inflated negative binomial", "Zero-inflated Poisson"))

tidy_column_names <- c("Model", "Log(likelihood)", "DF")

mod_tests_out <- tidy_model_names %>%
	left_join(mod_tests) %>%
	dplyr::select(Model = full_name, `Log(likelihood)` = logLik, DF = Df)

mod_tests_cap <- "Summary of how well models fit to test the association between $h^2_{EWAS}$ and the number of differentially methylated positions identified across 400 traits at P < 1x10$^{-5}$."

## ---- model-testing-tab --------------------------------
kable(mod_tests_out, format = "latex", caption = mod_tests_cap, booktabs = TRUE, escape = FALSE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) %>%
    add_footnote(c("DF = degrees of freedom."), 
    			 notation = "none")


## ---- dmps-and-h2ewas --------------------------------
include_graphics(file.path(fig_p, "m2_hit_count_scatter_p5_test.pdf"))

## ---- h2ewas-dmp-roc-curve --------------------------------
include_graphics(file.path(fig_p, "roc_plot.pdf"))


