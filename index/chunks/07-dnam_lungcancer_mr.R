## ---- load-data-07 --------------------------------

data_dir <- "data/07-dnam_lungcancer_mr"
figure_dir <- "figure/07-dnam_lungcancer_mr"

supp_tables_file <- "supplementary-tables.xlsx"
supp_tables_path <- file.path(data_dir, supp_tables_file)

supp_tables <- supp_tables_path %>%
	excel_sheets() %>%
	set_names() %>%
	map(read_excel, path = supp_tables_path)

tables_file <- "tables.xlsx"

table1 <- read_excel(file.path(data_dir, tables_file))

## ---- figures-setup-07 --------------------------------

# main figs
fig1 <- file.path(figure_dir, "Figure_1.jpg")
fig2a <- file.path(figure_dir, "Figure_2a.jpg")
fig2b <- file.path(figure_dir, "Figure_2b.jpg")
fig3 <- file.path(figure_dir, "Figure_3.jpg")
fig4a <- file.path(figure_dir, "Figure_4a.jpg")
fig4b <- file.path(figure_dir, "Figure_4b.jpg")

# sup figs
sup_figs <- file.path(figure_dir, grep("sup_fig", list.files(figure_dir), value=T))

## ---- fig1-07 --------------------------------
include_graphics(fig1)

## ---- fig2-07 --------------------------------
include_graphics(c(fig2a, fig2b))

## ---- fig3-07 --------------------------------
include_graphics(fig3)

## ---- fig4a-07 --------------------------------
include_graphics(fig4a)

## ---- fig4-07 --------------------------------
include_graphics(fig4b)


## ---- sup-fig1-07 --------------------------------
include_graphics(grep("fig1", sup_figs, value=T))

## ---- sup-fig2-07 --------------------------------
include_graphics(grep("fig2", sup_figs, value=T))

## ---- sup-fig3-07 --------------------------------
include_graphics(grep("fig3", sup_figs, value=T))

## ---- sup-fig4-07 --------------------------------
include_graphics(grep("fig4", sup_figs, value=T))

## ---- sup-fig5-07 --------------------------------
include_graphics(grep("fig5", sup_figs, value=T))

## ---- tables-setup-07 --------------------------------

### functions

unite_chr_pos <- function(df)
{
	### put chr and pos together
	if (!any(grepl("position", colnames(df), ignore.case = T))) return(df)
	if (any(grepl("CpG Chr", colnames(df), ignore.case = T))) {
		df <- df %>%
			unite("CpG chr:pos", `CpG Chr`:`CpG Position`, sep=":")
	} 
	if (any(grepl("SNP Chr", colnames(df), ignore.case = T))) {
		df <- df %>%
			unite("SNP chr:pos", `SNP Chr`:`SNP Position`, sep=":")
	} 
	if (any(grepl("^Position", colnames(df), ignore.case = T))) {
		df <- df %>%
			unite("chr:pos", Chr:Position, sep=":")
	}
	return(df)
}

get_added_header <- function(df)
{
	cols_to_sort <- grep(".*_.*", colnames(df), value = T)
	prefixes <- unique(gsub("_.*", "", cols_to_sort))
	suffixes <- unique(gsub(".*_", "", cols_to_sort))
	pref_ncols <- map_dbl(prefixes, function(x) length(grep(x, colnames(df))))
	no_pref_ncols <- sum(!colnames(df) %in% cols_to_sort)
	aha <- setNames(c(no_pref_ncols, pref_ncols), c(" ", prefixes))
	return(aha)
}

get_gene_col <- function(df)
{
	grep("gene", colnames(df), ignore.case = T)
}

#### tables

table1 <- unite_chr_pos(table1)
table1_aha <- get_added_header(table1)
table1_cap <- "Meta-analyses of EWAS of lung cancer using four separate cohorts: 
			   16 CpG sites associated with lung cancer at false discovery rate < 0.05."

colnames(table1) <- gsub(".*_", "", colnames(table1))
table1 <- table1 %>%
	tidy_nums() %>%
	tidy_colnames()

table1_gene_col <- get_gene_col(table1)

#### supplementary tables

tables_to_sort <- map_lgl(supp_tables, function(st) {
	any(grepl("_", colnames(st)))
})
tables_to_sort <- names(tables_to_sort)[tables_to_sort]


supp_tables <- lapply(supp_tables, unite_chr_pos)

st=tables_to_sort[4]
## get additional header data for supplementary tables that need it!
add_header <- lapply(tables_to_sort, function(st) {
	print(st)
	sup <- supp_tables[[st]]
	aha <- get_added_header(sup)
	return(aha)
})
names(add_header) <- tables_to_sort

## clean up column names and numbers
clean_supp_tables <- lapply(seq_along(supp_tables), function(x) {
	print(x)
	st_nam <- names(supp_tables)[x]
	st <- supp_tables[[x]]
	if (st_nam %in% tables_to_sort) {
		colnames(st) <- gsub(".*_", "", colnames(st))
	}
	st <- st %>%
		tidy_nums() %>%
		tidy_colnames() 
	return(st)
})
names(clean_supp_tables) <- names(supp_tables)

## get tables with "Gene" in column names and convert these columns to italics
gene_cols <- lapply(clean_supp_tables, get_gene_col)

## manually change anything if needs be
col_to_change <- grep("r2", colnames(clean_supp_tables[["S1"]]))
colnames(clean_supp_tables[["S1"]])[col_to_change] <- "r\\textsuperscript{2}"

col_to_change <- grep("I2", colnames(clean_supp_tables[["S2"]]))
colnames(clean_supp_tables[["S2"]])[col_to_change] <- "I\\textsuperscript{2}"

# manually do this one because it isn't like the others!
add_header[["S9"]] <- c(" " = 2, "FE meta-analysis" = 2, "Correction for correlation" = 2, " " = 3)

ks_latex_options <- lapply(names(clean_supp_tables), function(st_nam) {
	out <- c("striped", "hold_position", "scale_down")
	if (st_nam %in% tables_to_sort) out <- c(out, "repeat_header")
	return(out)
})
names(ks_latex_options) <- names(clean_supp_tables)

captions <- list(S1 = "Instrument strength in ARIES", 
				 S2 = "Heterogeneity between studies and smoker groups in the meta-analysis of EWAS in four cohorts", 
				 S3 = "The SNP-exposure association estimates from ARIES and NSHDS", 
				 S4 = "Full results for MR of DNA methylation of 14 CpG sites on lung cancer", 
				 S5 = "The association between mQTLs and their CpG sites across the five timepoints in ARIES", 
				 S6 = "Estimates of heterogeneity of MR estimates across multiple SNPs", 
				 S7 = "Association of \\textit{AHRR} methylation and methylation allele score with confounding factors in the CCHS", 
				 S8 = "One-sample MR analysis of the effect of \\textit{AHRR} methylation (\\%) on lung cancer risk in the CCHS", 
				 S9 = "Two sample MR analysis for \\textit{AHRR}", 
				 S10 = "Comparison of MR results with tumour-healthy tissue differential methylation", 
				 S11 = "mQTL-gene expression analysis in lung and whole blood using data from GTEx")

## ---- tab1-07 --------------------------------
kable(table1, booktabs = TRUE, caption = table1_cap) %>%
	add_footnote(c("Meta-analyses of lung cancer EWAS adjusted for study specific covariates (basic, N = 1809),", 
				   "basic model + surrogate variables (sv-adjusted, N = 1809), basic model + surrogate variables + derived cell counts (sv-and-cell-count, N = 1809).", 
				   "Meta-analyses were also conducted stratified by smoking status (never-smokers (N = 304), former-smokers (N = 648), current-smokers (N = 857)) using the basic model", 
				   "OR = odds ratio per SD increase in DNA methylation, SE = standard error, chr:pos = chromosome:position"), 
			 notation = "none") %>%
	add_header_above(table1_aha) %>%
	kable_styling(latex_options = c("striped", "hold_position", "scale_down", "repeat_header"), 
				  position = "center") %>%
	# column_spec(table1_gene_col, italic = TRUE) %>%
	landscape()

## ---- sup-tab1-07 --------------------------------
kbl(clean_supp_tables[["S1"]], booktabs = TRUE, caption = captions[["S1"]], 
	escape = FALSE) %>%
	add_footnote(c("SE = standard error, P = P value, N = sample size",
				   "F = F statistic, r\\textsuperscript{2} = Variance explained"), 
			 notation = "none", escape = FALSE) %>%
	kable_styling(latex_options = ks_latex_options[["S1"]])


## ---- sup-tab2-07 --------------------------------
kbl(clean_supp_tables[["S2"]], booktabs = T, caption = captions[["S2"]]) %>%
	add_footnote(c("Dir = Direction of effect", 
				   "I\\textsuperscript{2} = Heterogeneity I-squared value", 
				   "P = Heterogeneity P value", 
				   "chr:pos = chromosome:position", 
				   "sv-adjusted = surrogate variables included as covariates in analysis", 
				   "sv-and-cell-count = surrogate variables and derived cell counts included as covariates in analysis", 
				   "never-smokers = basic model in never smokers only", 
				   "former-smokers = basic model in former smokers only", 
				   "current-smokers = basic model in current smokers only",
				   "comp = comparison of smoker groups."), 
			 	notation = "none") %>%
	add_header_above(add_header[["S2"]]) %>%
	kable_styling(latex_options = ks_latex_options[["S2"]]) %>%
	landscape()

## ---- sup-tab3-07 --------------------------------
kbl(clean_supp_tables[["S3"]], booktabs = T, caption = captions[["S3"]]) %>%
	add_footnote(c("* = SNPs used as an instrumental variables were not replicated in the independent dataset (NSHDS)",
				   "Trans = trans mQTL (Yes/No)", 
				   "chr:position = chromosome:position", 
				   "MAF = minor allele frequency", 
				   "A1 = effect allele", 
				   "P = P value"), 
				 notation = "none") %>%
	add_header_above(add_header[["S3"]]) %>%
	kable_styling(latex_options = ks_latex_options[["S3"]]) %>%
	# column_spec(gene_cols[["S3"]], italic = TRUE) %>%	
	landscape()

## ---- sup-tab4-07 --------------------------------
kbl(clean_supp_tables[["S4"]], booktabs = T, caption = captions[["S4"]]) %>%
	add_header_above(add_header[["S4"]]) %>%
	add_footnote(c("N SNP = number of SNPs used in the analysis as instrumental variables", 
				   "* = Instrumental variables for that CpG site did not replicate in an independent dataset (NSHDS)", 
				   "Where N SNP = 1, the Wald ratio estimate is used", 
				   "Where N SNP > 1, the Wald ratio estimates were meta-analyzed and the estimates were weighted by the inverse variance of the association with the outcome"), 
				 notation = "none") %>%
	kable_styling(latex_options = ks_latex_options[["S4"]]) # %>%
	# column_spec(gene_cols[["S4"]], italic = TRUE)

## ---- sup-tab5-07 --------------------------------
kbl(clean_supp_tables[["S5"]], booktabs = T, caption = captions[["S5"]]) %>%
	add_header_above(add_header[["S5"]]) %>%
	add_footnote(c("P = p value"), 
				 notation = "none") %>% 
	kable_styling(latex_options = ks_latex_options[["S5"]]) %>%
	# column_spec(gene_cols[["S5"]], italic = TRUE) %>%
	landscape()

## ---- sup-tab6-07 --------------------------------
kbl(clean_supp_tables[["S6"]], booktabs = T, caption = captions[["S6"]]) %>%
	add_header_above(add_header[["S6"]]) %>%
	add_footnote(c("N SNP = number of SNPs used in the analysis as instrumental variables", 
				   "Q = Cochrane’s Q statistic",
				   "Lung cancer (ever) = lung cancer in ever smokers",
				   "Lung cancer (never) = lung cancer in never smokers",  
				   "Where P < 0.05, there is good evidence of heterogeneity across individual SNPs"), 
				 notation = "none") %>%
	kable_styling(latex_options = c("striped", "hold_position"))

## ---- sup-tab7-07 --------------------------------
kbl(clean_supp_tables[["S7"]], booktabs = T, caption = captions[["S7"]]) %>%
	add_header_above(add_header[["S7"]]) %>%
	add_footnote(c("For the allele score, genotypic effects were scaled to equate to the same magnitude of effect as a per 1% increase in methylation. Regressions were adjusted for the other factors in the table"), 
				 notation = "none") %>%
	kable_styling(latex_options = ks_latex_options[["S7"]])

## ---- sup-tab8-07 --------------------------------
kbl(clean_supp_tables[["S8"]], booktabs = T, caption = captions[["S8"]]) %>%
	add_header_above(add_header[["S8"]]) %>%
	add_footnote(c("HR = hazard ratio, P = P value"), 
				 notation = "none") %>%
	kable_styling(latex_options = ks_latex_options[["S8"]])

## ---- sup-tab9-07 --------------------------------
kbl(clean_supp_tables[["S9"]], booktabs = T, caption = captions[["S9"]]) %>%
	add_header_above(add_header[["S9"]]) %>%
	add_footnote(c("N SNP = number of SNPs used in the analysis as instrumental variables", 
				   "FE = fixed effects", 
				   "Q = Cochrane’s Q statistic", 
				   "DF = degrees of freedom", 
				   "P = P value"), 
				 notation = "none") %>%
	kable_styling(latex_options = ks_latex_options[["S9"]])

## ---- sup-tab10-07 --------------------------------
kbl(clean_supp_tables[["S10"]], booktabs = T, caption = captions[["S10"]]) %>%
	add_header_above(add_header[["S10"]]) %>%
	add_footnote(c("T/H = comparison of tumour and healthy tissue", 
				   "Adeno = Lung adenocarcinoma", 
				   "SCC = squamous cell carcinoma",
				   "P = P value",  
				   "hyper = hypermethylation is associated with lung cancer", 
				   "hypo = hypomethylation is associated with lung cancer", 
				   "For tumour/healthy tissue comparison, pos = hypermethylation of the CpG within the tumour tissue (neg is the opposite)"), 
				 notation = "none") %>%
	kable_styling(latex_options = ks_latex_options[["S10"]]) # %>%
	# column_spec(gene_cols[["S10"]], italic = TRUE)

## ---- sup-tab11-07 --------------------------------
kbl(clean_supp_tables[["S11"]], booktabs = T, caption = captions[["S11"]]) %>%
	add_header_above(add_header[["S11"]]) %>%
	add_footnote(c("Trans = trans mQTL (Yes/No)", 
				   "chr:pos = chromosome:position", 
				   "MAF = minor allele frequency", 
				   "A1 = effect allele", 
				   "P = P value"),
				 notation = "none") %>%
	kable_styling(latex_options = ks_latex_options[["S11"]]) # %>%
	# column_spec(gene_cols[["S11"]], italic = TRUE)
