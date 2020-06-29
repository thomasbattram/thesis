## ---- load-data-07 --------------------------------

data_dir <- "data/07-dnam_lungcancer_mr"
figure_dir <- "figure/07-dnam_lungcancer_mr"

supp_tables_file <- "supplementary-tables.xlsx"
supp_tables_path <- file.path(data_dir, supp_tables_file)

supp_tables <- supp_tables_path %>%
	excel_sheets() %>%
	set_names() %>%
	map(read_excel, path = supp_tables_path)

## ---- tables-setup-07 --------------------------------

sort_df <- function(df, col_prefix, col_suffix) 
{
	### sort out columns so they aren't shite
	df %>%
		pivot_longer(
			cols = grep(paste(col_prefix, collapse = "|"), colnames(.), value=T), 
			names_to = c("model"), 
			names_pattern = c("(.*)_.*"),
			values_to = col_suffix
		) %>%
		tidy_cols()
}

tables_to_sort <- map_lgl(supp_tables, function(st) {
	any(grepl("_", colnames(st)))
})

clean_supp_tables <- lapply(supp_tables, function(st) {
	print(st)
	col_sort <- any(grepl("_", colnames(st)))
	if (col_sort) {
		cols_to_sort <- grep(".*_.*", colnames(st), value = T)
		prefixes <- unique(gsub("_.*", "", cols_to_sort))
		suffixes <- unique(gsub(".*_", "", cols_to_sort))
		out <- sort_df(df = st, col_prefix = prefixes, col_suffix = suffixes)
	} else {
		out <- tidy_cols(st)
	}
	return(out)
})

