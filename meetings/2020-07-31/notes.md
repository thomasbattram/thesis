# PhD project meeting notes 2020-07-31

Attendees: Tom B, Gib

## Agenda

* ewas-gwas comp discussion 
* Thesis results chapters
* AOB

## ewas-gwas comp discussion

Been thinking about discussion of paper and why you might not find correlation between enriched pathways of EWAS and any GWAS even if you had good study power: [pathway-overlap-diagram.pdf](pathway-overlap-diagram.pdf). I'd assume the likely scenario is confounding/reverse causation + CpGs related to lots of different traits downstream... 

This is kind of going to be tested in the 'properties of EWAS' paper - pleiotropy of CpG sites... 

Points I want to make:
* Little overlap suggests new information gained from EWAS
* However, this information is hard to interpret - uncertain what is causing associations + uncertain what impact DNA methylation has on downstream traits
* Limitations

Any other big points to make??

__NOTES:__

Some meeting notes

## Thesis results chapters

Should I send them all over?? One is published work and I'm just updating it so that the supplementary is now part of the main text and there is a paragraph linking things...

__NOTES:__

Some meeting notes

## AOB

* Memory in bluecrystal 4... If a job is going to take up more memory does that memory get partitioned automatically across the processors/nodes OR is the memory just the memory used overall? 

* Extracting data from IEU Open GWAS Database files that were needed for all EWAS-GWAS overlap stuff and found that this ID existed in the gwas info (`ieugwasr::gwasinfo()`) "bbj-a-73", but VCF wasn't found in the same format as other GWAS IDs in the data repository (ID/ID.vcf.gz) and the ID itself didn't exist as it's own repo.

* Also there are a fair few VCFs that have 'length 0' apparently...