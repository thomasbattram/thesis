# ---------------------------------------------
# Using ieugwasr::ld_clump()
# ---------------------------------------------

# This script just gives an example of where the 
# ieugwasr::ld_clump() function did not work

pkgs <- c("tidyverse", "gwasvcf", "ieugwasr")
lapply(pkgs, require, character.only = T)

gwasdb_path <- "/mnt/storage/private/mrcieu/data/IGD/data/public"

# ---------------------------------------------
# extract data
# ---------------------------------------------

set_bcftools(path = genetics.binaRies::get_bcftools_binary())

id <- "ukb-d-20542"
filename <- paste0(id, ".vcf.gz")
vcffile <- file.path(gwasdb_path, id, filename)
vcf <- query_gwas(vcffile, pval=5e-8)
dat <- vcf_to_tibble(vcf)
dat$pval <- 10^(-dat$LP)
path_to_ref <- "data/1kg-data/EUR" ## CHANGE THIS!!
clumped_dat <- ld_clump(
	dplyr::tibble(rsid=dat$rsid, pval=dat$pval, id=dat$id),
	plink_bin = genetics.binaRies::get_plink_binary(),
	bfile = path_to_ref
)