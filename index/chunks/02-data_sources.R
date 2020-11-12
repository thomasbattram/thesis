## ---- load-data-02 --------------------------------

tp_02 <- file.path(tab_path, "02-data_sources")
fp_02 <- file.path(fig_path, "02-data_sources")


data_overview_tab <- readxl::read_xlsx(file.path(tp_02, "data_sources_overview.xlsx"))

data_overview_cap <- "Overview of data used in this thesis"

## ---- data-overview-tab --------------------------------
kbl(data_overview_tab, format = "latex", caption = data_overview_cap, booktabs = TRUE) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down")) %>%
    add_footnote(c("ARIES = Accessible Resource for Integrated Epigenomic Studies", 
    			   "GEO = Gene Expression Omnibus", 
    			   "IEU = Integrative Epidemiology Unit", 
    			   "EPIC-Italy = Italian strand of the European Prospective Investigation into Cancer and Nutrition study", 
    			   "MCCS = Melbourne Collaborative Cohort Study", 
    			   "NOWAC = Norwegian Women and Cancer", 
    			   "NSHDS = Northern Sweden Health and Disease Study", 
    			   "TRICL-ILCCO = Transdisciplinary Research in Cancer of the Lung and The International Lung Cancer Consortium",
                   "CCHS = Copenhagen City Heart Study", 
    			   "DNAm = DNA methylation"), 
                notation = "none", escape = FALSE) %>%
    add_footnote(c("Data source created in Chapter 3"), notation = "symbol")