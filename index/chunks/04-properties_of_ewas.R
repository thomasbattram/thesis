## ---- load-data-04 --------------------------------

tp_04 <- file.path(tab_path, "04-properties_of_ewas")
fp_04 <- file.path(fig_path, "04-properties_of_ewas")
# study descriptions
study_dat <- read_tsv(file.path(tp_04, "data_description.tsv"))

# traits per DMP
t_dat <- read_tsv(file.path(tp_04, "n_traits_per_cpg.tsv"))

# r-squared values
rsq_dat <- read_tsv(file.path(tp_04, "rsquared_data.tsv"))
rsq_sum_dat <- read_tsv(file.path(tp_04, "sum_of_rsquared_data.tsv"))

# geo re-analysis results
geo_rean <- read_tsv(file.path(tp_04, "geo_reanalysis_data.tsv"))

# robust results summary data
rob_summary <- new_load(file.path(tp_04, "robust_summary.RData"))

# faulty probes and batch
batch_and_f_probes <- new_load(file.path(tp_04, "batch_and_faulty_probes.RData"))

# replication data
replication_dat <- new_load(file.path(tp_04, "replication_data.RData"))

# cpg-chars data
cpg_chars_res <- read_tsv(file.path(tp_04, "characteristics_assoc_tab.tsv"))

## ---- study-data-setup --------------------------------

study_caption <- "Description of data present in the EWAS Catalog"

study_dat <- study_dat %>%
	tidy_colnames()

## ---- study-data-tab --------------------------------
kable(study_dat, format = "latex", caption = study_caption, booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) 

## ---- traits-manhattan-setup --------------------------------

h_genes <- t_dat %>%
	dplyr::filter(is_highlight == "yes") %>%
	arrange(n_traits)

h_cpgs <- h_genes$CpG
names(h_cpgs) <- h_genes$Gene

h_cpg_genes <- paste0(h_cpgs, " _", names(h_cpgs), "_", collapse = ", ")

trait_man_file <- file.path(fp_04, "traits_per_dmp_at_1e-07.png")

## ---- traits-manhattan --------------------------------
include_graphics(trait_man_file)

## ---- rsq-setup --------------------------------

min_r2 <- min(rsq_dat$rsq, na.rm = T)
max_r2 <- max(rsq_dat$rsq, na.rm = T)

# sum of rsq values
rsq_sum_plot <- ggplot(rsq_sum_dat, aes(x = log_total_rsq)) +
    geom_histogram(fill = "blue", colour = "black") +
    theme_bw(base_size = 15) + 
    labs(x = expression(log[10](sum(r^{2}))), y = "EWAS")

# rsq values split by how high 
suspect_studies <- rsq_sum_dat %>%
    dplyr::filter(p_diff_adj < 0.05)

new_rsq_dat <- rsq_dat %>%
    mutate(high_total_rsq = ifelse(StudyID %in% suspect_studies$StudyID, TRUE, FALSE))

# change in rsq
new_med_rsq <- new_rsq_dat %>%
    group_by(high_total_rsq) %>%
    summarise(med_rsq = median(rsq,na.rm=T)) %>%
    dplyr::filter(high_total_rsq == FALSE) %>%
    pull(med_rsq)

rsq_plot <- ggplot(new_rsq_dat, aes(x = rsq, fill = as.factor(high_total_rsq))) +
    geom_histogram(colour = "black", binwidth = 0.01) +
    theme_bw(base_size = 15) + 
    labs(x = expression(r^{2}), y = "Differentially methylated positions", 
         fill = expression(inflated ~ ~sum(r^{2})))

## ---- rsq-distribution --------------------------------
print(rsq_plot)

## ---- rsq-sum-distribution --------------------------------
print(rsq_sum_plot)

## ---- batch-faulty-setup --------------------------------

batch_tab <- batch_and_f_probes$batch
f_probes <- batch_and_f_probes$faulty_probes
percent_sex_probes <- f_probes %>%
    dplyr::filter(highlight == "on sex chromosome") %>%
    dplyr::filter(cpg_or_ewas == "cpg") %>%
    pull(percent)
percent_faulty_probes <- f_probes %>%
    dplyr::filter(highlight == "potentially faulty") %>%
    dplyr::filter(cpg_or_ewas == "cpg") %>%
    pull(percent)

f_probes_plot <- ggplot(f_probes, aes(x = cpg_or_ewas, y = percent, fill = highlight)) +
    geom_bar(colour = "black", stat="identity") + 
    scale_fill_manual(values=c("white", "#E69F00", "#56B4E9")) + 
    labs(fill = "") + 
    theme_bw(base_size = 15) + 
    theme(axis.title.x = element_blank(), legend.position="bottom")

## ---- faulty-probes-plot --------------------------------
print(f_probes_plot)

## ---- replication-setup --------------------------------

rep_study_n <- replication_dat$rep_study_n
rep_rates <- replication_dat$rep_rates

rep_tab <- rep_rates %>%
    dplyr::select(-studyid) %>%
    tidy_nums() %>%
    tidy_colnames()

rep_caption <- "Replication rate"

# geo re-analysis stuff
geo_rean_tab <- geo_rean %>%
    dplyr::select(Trait = trait, 
                  N_DMPs = ori_dmps, 
                  N_replicated = n_replicated, 
                  Percent_replicated = rep_percent) %>%
    tidy_nums() %>%
    tidy_colnames() %>%
    arrange(Trait)

geo_rean_caption <- "GEO re-analysis replication"

## ---- replication-tab --------------------------------
kable(rep_tab, format = "latex", caption = rep_caption, booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "scale_down")) 

## ---- geo-reanalysis-tab --------------------------------
kable(geo_rean_tab, format = "latex", caption = geo_rean_caption, booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) 

## ---- cpg-characteristics-setup --------------------------------

# avg_meth_file <- paste0(fp_04, "figures/avg_meth_vs_effect_size.png")
# var_meth_file <- paste0(fp_04, "figures/var_meth_vs_effect_size.png")
# h2_twin_meth_file <- paste0(fp_04, "figures/h2_twin_vs_effect_size.png")
# h2_twin_dmp_file <- paste0(fp_04, "figures/dmp_h2_twin_scatter.png")
cpg_chars_file <- file.path(fp_04, "combined_characteristics_plots.png")

cpg_chars_tab <- cpg_chars_res %>%
    tidy_nums() %>%
    tidy_colnames()

chars <- unique(cpg_chars_res$characteristic)
assoc_val <- colnames(cpg_chars_res)[colnames(cpg_chars_res) != "characteristic"]

x <- chars[1]
char_vals <- lapply(chars, function(x) {
    df <- dplyr::filter(cpg_chars_res, characteristic == x)
    out <- lapply(assoc_val, function(i) df[[i]])
    names(out) <- assoc_val
    return(out)
})
names(char_vals) <- chars

cpg_chars_cap <- "Association between CpG chars and associations in EWAS"

## ---- cpg-chars-plot --------------------------------
include_graphics(cpg_chars_file)

## ---- cpg-chars-tab --------------------------------
kable(cpg_chars_tab, format = "latex", caption = cpg_chars_cap, booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) 

## ---- enrichment-setup --------------------------------

chrom_state_file <- file.path(fp_04, "chromatin_states_enrichment_boxplots_onepage.pdf")
tfbs_file <- file.path(fp_04, "cpg_corebg_matched_all_enrichment_All_OR.pdf")

strict_p_threshold <- comma(1e-7 / rob_summary$n_ewas)

## ---- chrom-state-plot --------------------------------
include_graphics(chrom_state_file)

## ---- tfbs-plot --------------------------------
include_graphics(tfbs_file)












