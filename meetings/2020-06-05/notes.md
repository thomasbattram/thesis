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

* method 1 = map sites to genes, genes to pathways and assess overlap
* method 2 = map sites to genes, perform geneset enrichment analysis to generate pathway enrichment scores and then look at correlation

With method 1 a null distribution was generated each time a comparison was made, making take much longer. 
Options:
- Apply method 1 to assessing overlap between all the GWAS + seven EWAS generating a null distribution using permutations --> will take roughly 4h to generate the null distribution for each trait
- Apply method 1, but use the empirical data as it's own null (null for GWAS1-GWAS2 overlap is all other pairwise overlaps for GWAS1)
- Apply method 2 when comparing EWAS and GWAS of same traits

__NOTES:__
- Could do enrichment approach whereby you get "enriched pathways" and look for overlap between them.
- High OR = easy to get an association by chance. Would be nice to weight pathways by the number of genes in them
- Ideally, we'd have simulations that tell us whether the methods we're using are giving us the correct answer and how power influences them. Then we could have empirical data to help validate then.

Change to 2500 causal genes and in that are the 100 GWAS genes already detected. Then sample 100 genes from the 2500 then go to look at overlap.

Also, would be worth trying to simplify things so that we can have a probability that the output is somewhere in the parameter space OR probabilities for each parameter space. Thinking some kind of likelihood function needs to be specified then we maximise the likelihood of where the outcome would sit in each parameter. --> TO BE DISCUSSED LATER




