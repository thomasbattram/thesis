## ---- load-data-06 --------------------------------

fig_p <- file.path(fig_path, "06-ewas_gwas_comparison")
tab_p <- file.path(tab_path, "06-ewas_gwas_comparison")

# auc data
auc_dat <- read_tsv(file.path(tab_p, "auc_data.txt"))

# study data
# trait_dat <- read_tsv(file.path(tab_p, "study_data.txt"))
gwas_trait_dat <- read_tsv(file.path(tab_p, "gwas_studies_info.tsv"))
ewas_trait_dat <- read_tsv(file.path(tab_p, "ewas_studies_info.tsv"))

# divided genome data
div_dat_groups <- read_tsv(file.path(tab_p, "groups.txt"))

# load simulation data for plot
load(file.path(tab_p, "methods_test_gene_up_auc_plot_all_databases_ggplotgrobs.RData"))

# gene overlap res
load(file.path(tab_p, "gene_overlap_results.RData"))
# pathway enrichment score res
load(file.path(tab_p, "pathway_enrichment_results.RData"))

# load architecture simulation z-test data
asim_ztest <- read_tsv(file.path(tab_p, "arch_sims_ztest_sig_res.tsv"))

# all info from correlations of all gwas and ewas
load(file.path(tab_p, "ewas_gwas_comp_stats.RData"))
gwas_ewas_comp_stats <- out_list

# load in enriched geneset examples data
load(file.path(tab_p, "enriched_geneset_examples.RData"))

num_to_text <- function(x, start_of_sentence = FALSE)
{
    nums <- 0:10
    names(nums) <- c("zero", "one", "two", "three", "four", "five", 
                     "six", "seven", "eight", "nine", "ten")
    if (start_of_sentence) names(nums) <- stringr::str_to_title(names(nums))
    if (!x%%1 == 0) warning("X is not an integer")
    if (x < 11 & x > -1) {
        out <- names(nums)[nums == x]
    } else {
        out <- x
    }
    return(out)
}

tidy_colnames <- function(df) 
{
    colnames(df) <- gsub("_", "-", colnames(df))
    return(df)
}

tidy_traits <- function(df) 
{
    df$trait <- gsub("_", " ", df$trait)
    return(df)
}

tidy_nums <- function(df) 
{
    cols <- colnames(df)
    out <- map_dfc(1:ncol(df), function(x) {
        vals <- df[[x]]
        comma(vals)
    })
    colnames(out) <- cols
    return(out)
}

## ---- trait-data-setup-06 --------------------------------

# some changes to trait_dat
trait_dat_tab <- ewas_trait_dat %>%
    left_join(gwas_trait_dat, by = c("Trait" = "ec_trait")) %>%
    dplyr::select(-trait) %>%
    dplyr::select(trait = Trait, ewas_author = Author, ewas_pmid = PMID, 
                  ewas_n = N, gwas_author = author, gwas_pmid = pmid, gwas_n = sample_size) %>%
    dplyr::filter(!is.na(gwas_author)) %>%
    mutate(ewas_pmid = as.character(ewas_pmid), gwas_pmid = as.character(gwas_pmid)) %>%
    tidy_colnames %>% 
    tidy_traits %>%
    tidy_nums

## ---- trait-data-tab-06 --------------------------------
kable(trait_dat_tab, format = "latex", booktabs = TRUE, 
      caption = "Study data") %>%
      kable_styling(latex_options = c("striped", "hold_position", "scale_down")) %>%
      add_footnote(c("Where gwas-pmid = NA, the GWAS were conducted as part of a UK Biobank GWAS pipeline within the Univeristy of Bristol's Integrative Epidemiology Unit and can be found on the OpenGWAS Project website (see Methods for more)"), 
                    notation = "none")

## ---- gwas-predicting-ewas-setup --------------------------------

beta <- c("max_beta")
auc_res <- auc_dat %>%
	dplyr::filter(predictor == beta)

auc_range <- paste(comma(range(auc_res$auc)), collapse = "-")

auc_plot <- ggplot(auc_res, aes(x = trait, y = auc)) +
    geom_point(position = position_dodge(width = 0.9)) +
    geom_linerange(aes(ymin = auc_ci_low, ymax = auc_ci_upper), position = position_dodge(width = 0.9)) +
    labs(x = bquote("Trait"), 
         y = "Area under the curve") +
    scale_y_continuous(limits = c(0.2, 1)) + 
    geom_hline(yintercept = 0.5, colour = "red", linetype = "dashed") + 
    scale_x_discrete("Trait", labels = c("alcohol_consumption_per_day" = "AC",
  									   "body_mass_index" = "BMI",
                                       "c-reactive_protein" = "CRP",  
  									   "educational_attainment" = "EA", 
  									   "former_versus_never_smoking" = "FsNs", 
  									   "current_versus_never_smoking" = "CsNs", 
  									   "glucose" = "Glucose", 
  									   "insulin" = "Insulin")) +
    theme_bw()

region_overlap_barplot_file <- file.path(fig_p, "all_traits_overlap_bar.pdf")

## ---- overlap-barplot --------------------------------
include_graphics(region_overlap_barplot_file)

## ---- auc-plot --------------------------------
print(auc_plot)

## ---- methods-sims-setup --------------------------------

methods_sims_schematic <- file.path(fig_p, "simulations-gene-up-flowchart.pdf")
methods_sims_summ_res_file <- file.path(fig_p, "methods_test_gene_up_auc_plot_all_databases_summary.pdf")
methods_sims_all_res_dir <- file.path(fig_p, "method_test_gene_up_all")
methods_sims_go_kegg_gene_res_dir <- file.path(fig_p, "method_test_gene_v_protein")

PEC <- c(0.05, 0.1, 0.2, 0.5, 1)
files_in_dirs <- paste0("PEC_", PEC, ".pdf")

stopifnot(all(files_in_dirs %in% list.files(methods_sims_all_res_dir)))
stopifnot(all(files_in_dirs %in% list.files(methods_sims_go_kegg_gene_res_dir)))

methods_sims_all_res_files <- file.path(methods_sims_all_res_dir, files_in_dirs)
methods_sims_go_kegg_gene_res_files <- file.path(methods_sims_go_kegg_gene_res_dir, files_in_dirs)

## ---- method-simulations-schematic --------------------------------
include_graphics(methods_sims_schematic)

## ---- sim1-summ-plot --------------------------------
include_graphics(methods_sims_summ_res_file)

## ---- sim1-full-plot1 --------------------------------
include_graphics(methods_sims_all_res_files[1])

## ---- sim1-full-plot2 --------------------------------
include_graphics(methods_sims_all_res_files[2])

## ---- sim1-full-plot3 --------------------------------
include_graphics(methods_sims_all_res_files[3])

## ---- sim1-full-plot4 --------------------------------
include_graphics(methods_sims_all_res_files[4])

## ---- sim1-full-plot5 --------------------------------
include_graphics(methods_sims_all_res_files[5])

## ---- sim1-go-kegg-gene-comp1 --------------------------------
include_graphics(methods_sims_go_kegg_gene_res_files[1])

## ---- sim1-go-kegg-gene-comp2 --------------------------------
include_graphics(methods_sims_go_kegg_gene_res_files[2])

## ---- sim1-go-kegg-gene-comp3 --------------------------------
include_graphics(methods_sims_go_kegg_gene_res_files[3])

## ---- sim1-go-kegg-gene-comp4 --------------------------------
include_graphics(methods_sims_go_kegg_gene_res_files[4])

## ---- sim1-go-kegg-gene-comp5 --------------------------------
include_graphics(methods_sims_go_kegg_gene_res_files[5])

## ---- empirical-results-setup --------------------------------
gene_empirical_tabs <- gene_overlap_tabs %>%
    map(tidy_colnames) %>% 
    map(tidy_traits) %>%
    map(tidy_nums)

gene_empirical_out_tab <- gene_empirical_tabs$go

n_traits_no_g_overlap <- sum(gene_empirical_out_tab[['gene-overlap']] == " 0")

pathway_empirical_tabs <- pathway_enrich_tabs %>%
    map(tidy_colnames) %>% 
    map(tidy_traits) %>%
    map(tidy_nums)

pathway_empirical_out_tab <- pathway_empirical_tabs$go

max_p_overlap <- max(pathway_empirical_out_tab[['geneset-overlap']])

mpo_trait <- pathway_empirical_out_tab %>%
    dplyr::filter(`geneset-overlap` == max_p_overlap) %>%
    pull(trait)

## ---- empirical-gene-tab --------------------------------
kable(gene_empirical_out_tab, format = "latex", caption = "Overlap of genes identified by EWAS and GWAS", booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) %>%
    add_footnote(c("odds ratios (ORs) can be interpreted as the odds of an gene being identified by EWAS and a GWAS over the odds of a gene being identified by an EWAS but not by a GWAS.", 
                   "expected-OR = the mean OR after repeating the analysis 1000 times, randomly sampling EWAS genes equal to the number identified in the empirical analysis."), 
                 notation = "none")

## ---- empirical-pathway-tab --------------------------------
kable(pathway_empirical_out_tab, format = "latex", 
      caption = "Correlation of geneset enrichment scores between EWAS and GWAS", booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) %>%
    add_footnote(c("For each geneset, odds of study genes being in the geneset divided by the odds the study genes not being in the geneset were assessed and correlation between these odds ratios are given here.", 
                    "expected-cor = the mean correlation between odds ratios after repeating the analysis 1000 times, randomly sampling EWAS genes equal to the number identified in the empirical analysis", 
                    "geneset-overlap indicates the number of gene ontology terms that map to both genes identified by the EWAS and GWAS."), 
                 notation = "none")

## ---- arch-sims-setup --------------------------------

arch_sims_schematic <- file.path(fig_p, "architecture-simulations-schematic.pdf")
arch_sims_main_res <- file.path(fig_p, "architecture_sims_crp_fvns_only_correlation_of_pathway_enrichment_scores.png")
arch_sims_supp_file <- file.path(fig_p, "architecture_sims_other_traits_corr.png")

asim_ztest_out <- asim_ztest %>%
    tidy_colnames() %>%
    tidy_traits() %>%
    tidy_nums()

## ---- arch-simulations-schematic --------------------------------
include_graphics(arch_sims_schematic)

## ---- arch-simulations-crp-fvns --------------------------------
include_graphics(arch_sims_main_res)

## ---- arch-simulations-supp-res --------------------------------
include_graphics(arch_sims_supp_file)

## ---- arch-simulations-ztest-tab --------------------------------
kable(asim_ztest_out, format = "latex", caption = "Simulation scenarios with evidence they differ from what is expected from empirical data", booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) %>%
    add_footnote(c("For each geneset, odds of selected genes being in the geneset divided by the odds the selected genes not being in the geneset were assessed and correlation between these odds ratios are given here.", 
                    "N-KTG = the number of 'total known genes', which is the sum of genes identified in EWAS and GWAS",
                    "R-KTG = the ratio of causal and associated genes relative to N-KTG used in the simulations. 1:1 means there are N-KTG causal genes and N-KTG associated genes.", 
                    "ca-assoc-overlap = set overlap of causal and associated genes",
                    "expected-cor = the mean correlation between odds ratios from 1000 repeats of the given simulation scenario", 
                    "observed-cor = the correlation observed just using the empirical datasets."), 
                 notation = "none")

## ---- all-correlations-setup --------------------------------
ieugwas_studies <- gwas_ewas_comp_stats$gwas_studies
cor_range <- gwas_ewas_comp_stats$cor_range
cor_mean <- gwas_ewas_comp_stats$cor_mean
ewas_gwas_mean <- gwas_ewas_comp_stats$ewas_gwas_mean
gwas_gwas_mean <- gwas_ewas_comp_stats$gwas_gwas_mean
gwas_cor_tab <- gwas_ewas_comp_stats$gwas_cor_tab %>%
    mutate(trait1 = tolower(trait1), trait2 = tolower(trait2)) %>%
    left_join(ieugwas_studies, by = c("trait1" = "id")) %>%
    left_join(ieugwas_studies, by = c("trait2" = "id")) %>%
    mutate(trait1 = trait.x, trait2 = trait.y) %>%
    dplyr::select(trait1, trait2, rho, p=p_diff) %>%
    tidy_colnames() %>%
    tidy_nums()
lc_sm_rho <- gwas_ewas_comp_stats$lc_sm_cor$rho

go_heatmap_file <- file.path(fig_p, "go_all_correlations_heatmap.png")

## ---- heatmap-go --------------------------------
include_graphics(go_heatmap_file)

## ---- gwas-cor-tab --------------------------------
kable(gwas_cor_tab, format = "latex", caption = "Correlation of enrichment scores between GWAS", booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down"))






