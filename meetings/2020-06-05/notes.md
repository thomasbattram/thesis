# PhD project meeting notes 2020-06-03

Attendees: Tom B, Gib

## Agenda

* ewas-gwas comparison simulations
* ewas-gwas comparison harmonising methods
* AOB

## ewas-gwas comparison simulations
see plots:
`simple_simulation4_gene.pdf`
`simple_simulation4_go.pdf`
`simple_simulation4_kegg.pdf`

## ewas-gwas comparison harmonising methods

method 1 = map sites to genes, genes to pathways and assess overlap
method 2 = map sites to genes, perform geneset enrichment analysis to generate pathway enrichment scores and then look at correlation

With method 1 a null distribution was generated each time a comparison was made, making take much longer. 
Options:
- Apply method 1 to assessing overlap between all the GWAS + seven EWAS generating a null distribution using permutations 
- Apply method 1, but use the empirical data as it's own null (null for GWAS1-GWAS2 overlap is all other pairwise overlaps for GWAS1)
- Apply method 2 when comparing EWAS and GWAS of same traits
