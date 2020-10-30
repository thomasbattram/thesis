# PhD project meeting notes 2020-10-30

Attendees: Tom B, Gib

## Agenda

* [ewas-gwas comparison geneset filtering](#item1) 
* [ewas catalog data](#item2)
* [AOB](#aob)

## ewas-gwas comparison geneset filtering <a name="item1"></a>

* Realised that a lot of go term genesets are only one gene so tested if removing these (and massive genesets of >5000 genes) had an impact on power. Answer is no: [plot](go_sim1_filtered_terms_power.pdf)

* Not limiting to "independent" SNPs means there are a lot of genes... -- currently just added this to the limitations. 
	+ All SNPs at P<5e-8 kept and mapped to either gene they're within OR nearest gene
	+ For BMI, if the independent SNPs are taken from the Yengo paper then mapped to genes a few more genes than SNPs are present (expected), but this is about 3x fewer genes than with the method currently used...

* Some of the new architecture sim results are wild: [plot](architecture_sims_crp_fvns_only_correlation_of_pathway_enrichment_scores.png)

__NOTES:__

Some meeting notes

## ewas catalog data <a name="item2"></a>

* Need to "timestamp" results chapters that use EWAS Catalog data. 
	+ Was thinking to have a sentence or two at the end of that chapter
	+ For ewas-gwas comparison it's weird because of glucose + insulin EWAS...

__NOTES:__

Some meeting notes

## AOB <a name="aob"></a>

* AOB item1