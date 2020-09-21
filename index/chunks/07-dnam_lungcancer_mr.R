## ---- load-data-07 --------------------------------

data_dir <- "data/07-dnam_lungcancer_mr"
figure_dir <- "figure/07-dnam_lungcancer_mr"

supp_tables_file <- "supplementary-tables.xlsx"
supp_tables_path <- file.path(data_dir, supp_tables_file)

supp_tables <- supp_tables_path %>%
	excel_sheets() %>%
	set_names() %>%
	map(read_excel, path = supp_tables_path)

## ---- figures-setup-07 --------------------------------

fig1 <- file.path(figure_dir, "Figure_1.jpg")
fig2a <- file.path(figure_dir, "Figure_2a.jpg")
fig2b <- file.path(figure_dir, "Figure_2b.jpg")
fig3 <- file.path(figure_dir, "Figure_3.jpg")
fig4a <- file.path(figure_dir, "Figure_4a.jpg")
fig4b <- file.path(figure_dir, "Figure_4b.jpg")

# with figure 2 - try side-by-side first, then can split into two figs

## ---- fig1-07 --------------------------------
include_graphics(fig1)

## ---- fig2-07 --------------------------------
include_graphics(c(fig2a, fig2b))

## ---- fig3-07 --------------------------------
include_graphics(fig3)

## ---- fig4-07 --------------------------------
include_graphics(c(fig4a,fig4b))

## ---- tables-setup-07 --------------------------------

# This is all bs - probs best just to change these tables manually
# or semi-manually (one-by-one in R)

sort_df <- function(df, col_prefix, col_suffix) 
{
	### sort out columns so they aren't shite
	out <- map_dfr(col_suffix, function(suff) {
		df %>%
			pivot_longer(
				cols = grep(paste(col_prefix, collapse = "|"), colnames(.), value=T), 
				names_to = c("model"), 
				names_pattern = c("(.*)_.*"),
				values_to = suff
			) %>%
			tidy_nums() 
	})
	return(out)
}

tables_to_sort <- map_lgl(supp_tables, function(st) {
	any(grepl("_", colnames(st)))
})


### CHANGE THIS!!! --> DOESN'T WORK FOR OTHER SUPP TABLES!!
clean_supp_tables <- lapply(1, function(x) {
	print(x)
	st <- supp_tables[[x]]
	col_sort <- any(grepl("_", colnames(st)))
	if (col_sort) {
		cols_to_sort <- grep(".*_.*", colnames(st), value = T)
		prefixes <- unique(gsub("_.*", "", cols_to_sort))
		suffixes <- unique(gsub(".*_", "", cols_to_sort))
		out <- sort_df(df = st, col_prefix = prefixes, col_suffix = suffixes)
	} else {
		out <- tidy_nums(st)
	}
	return(out)
})

