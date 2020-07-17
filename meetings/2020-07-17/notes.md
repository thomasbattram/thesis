# PhD project meeting notes 2020-07-17

Attendees: Tom B, Gib

## Agenda

* Team meetings
* EWAS-GWAS Comparison project progress
* AOB

## Team meetings

Would be nice to have a general chat about science and how to improve things in the department/for each other with work

__NOTES:__

Good idea, can make this a thing.

## EWAS-GWAS Comparison project progress

No real difference between gene overlap when mapping to protein coding genes compared to ensembl gene ids.

Therefore: Can use proteins :D 

Everything else is setup to run sequentially. In the simulations we've done so far, there hasn't been a huge difference between using enrichment score correlations and all pathway overlap to test whether there is more pathway overlap than expected by chance. 

__NOTES:__

It would be useful to note some of the raw numbers in the manuscript -- e.g. the number of genes that overlap

Lack of correlation when using spearman suggests no systematic inflation of pathway correlation. -- may have arisen if pathways always get tagged

Should just run correlations without permutations and then run permutations if there is high correlation so can follow up an "interesting" result.

## AOB

* Will send h<sup>2</sup><sub>EWAS</sub> paper over