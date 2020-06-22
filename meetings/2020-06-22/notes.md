# PhD project meeting notes 2020-06-22

Attendees: Tom B, Gib

## Agenda

* h<sup>2</sup><sub>EWAS</sub> manuscript

## h<sup>2</sup><sub>EWAS</sub> manuscript

Problems with h<sup>2</sup><sub>SNP</sub> - GWAS hits prediction work:

1. If define hits above expected as threshold x one million then get too many 'sig' hits above number expected and if you take into account n-traits then you get too few... (formula is GWAS hits above expected ~ h<sup>2</sup><sub>SNP</sub>)
2. The extract_instruments() function appears to be a bit temperamental...

pre-lim results: [h2_snp-count_roc.pdf](h2_snp-count_roc.pdf), [h2_snp-count_roc_strict.pdf](h2_snp-count_roc_strict.pdf)

Just use bc4 and https://mrcieu.github.io/gwasvcf/ to extract data and run the analysis...

* access bc4
* file is stored here: /mnt/storage/private/mrcieu/research/scratch/IGD/data/public 
	+ directory for every id 
	+ in directory there is a vcf file

Finished going over comments.

Also wanted to ask if I need to generate a new B number for this project or whether I can use an existing one... 

When going through this version of the manuscript please check the UKB section of the methods + supplement. It's now a very minor part of the analysis so just added a single sentence in the results to reference it and put the plot in the supplement. So I didn't put much detail in to describe the data...

There are some 'unresolved' comments in the manuscript. I've tried to answer them but realise I might not have done it justice. 

- Add in to results the imprecision and interpretation.

I'll send over a 'clean' (with only comments) and 'unclean' version. 

To-do:
1. Submit proposal to ALSPAC
2. Add imprecision into results of manuscript
3. Change results section to match model of gwas-hits ~ h2snp
4. Send clean version and fully commented version to Gib
5. Apply for bc4 access
6. Make script for gwas-hits ~ h2snp analysis.
7. Run script and put results in manuscript

