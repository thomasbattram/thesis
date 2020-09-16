# PhD project meeting notes 2020-09-16

Attendees: Tom B, Gib

## Agenda

* Results from EWAS-GWAS comparison simulations
* Properties of EWAS
* Thesis structure
* AOB

## Results from EWAS-GWAS comparison simulations

_Premise of simulations_

We have known EWAS genes and known GWAS genes and a simulated number of causal + consequential genes. We mix the EWAS genes in the simulated consequential genes and pick out a number equal to the number of known EWAS genes. We do the same with GWAS genes and simulated causal genes. We check the overlap between causal and consequential genes picked out, generate enrichment scores for GO terms for each geneset and then assess correlation of enrichment scores. 

We vary the number of simulated causal + consequential genes as well as the proportion of overlap between causal + consequential genes.

_Results_

[plot1](architecture_sims_correlation_of_pathway_enrichment_scores.pdf)

[plot2](architecture_sims_log10_gene_overlap.pdf)

For each trait it seems the only real scenarios we can rule out are: number of genes is close to what has been discovered and overlap is high... 

So we either haven't discovered all genes with EWAS + GWAS or the overlap between causal and consequential genes is likely not high. 

How can I represent this?? -- good idea to just put two of the plots in (such as BMI + current vs. never) and talk about inference that can be made from these. 

__NOTES:__

Presenting these sims:

- Prose overview of what want to achieve with these simulations. 
- Brief mention of methods
- Results
- Full methods in Methods section later

For rest of paper, it's worth grounding it in reality by talking about actual pathways that were found. SO pick a trait and check the pathways that were enriched for EWAS hits and GWAS hits and compare what those pathways are. This can be put at the end of the section where lack of empirical overlap is established.

## Properties of EWAS

Genomic features analysis needed! -- intro includes talking about how DNAm sites choosing 

## Thesis structure

OK to have boxes in thesis chapters? - should be fine.

How to add v large tables in thesis that would just be spreadsheets in supplement for papers? - email the library and ask them what they recommend. Some guidance: http://www.bristol.ac.uk/academic-quality/pg/pgrcode/annex4/

__NOTES:__

Some meeting notes

## AOB

* OK to present at epi-epi on September 28th? -- yes, move to 1pm
* Getting comments back -- Gib will ask them to get back with comments if needs be
* Guess I can use my PhD money to go to virtual conferences? -- was thinking of putting in an abstract for properties of EWAS stuff -- yeah this is fine!
