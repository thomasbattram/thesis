# PhD project meeting notes 2020-05-12

Attendees: Tom B, Gib

## Agenda

* general updates
* ewas-gwas comparison paper
* ewas-gwas comparison simulations
* AOB

## general updates

* Going to start updating EWAS Catalog from next week
* Thesis introduction first draft pretty much ready --> should be with you by the end of the week
* Keen to get the gwas-ewas comparison manuscript done by the end of next week

## ewas-gwas comparison paper
Question: Can EWAS add to the biological information gained from conducting GWAS?

Brief methods: Extract data for EWAS (N>4500) and corresponding GWAS. Match sites identified to regions/genes/pathways and check overlap at each stage. Explore pathway overlap between EWAS and other GWAS.

### Results

* Little overlap in genomic regions identified
* Large number of overlapping pathways, but no more than expected by chance
* Scenarios in which we'd expect this to occur are... (simulations)
* Generally EWAS pathway enrichment correlates poorly with all GWAS pathway enrichments, with some exceptions (e.g. insulin EWAS and body fatness GWAS).

__NOTES__

- Should check to see why the methods aren't consistent between pathway overlap stuff

- For intial overlap analysis could do this:
	1. Keep overlap stuff same for looking at gene overlap
	2. For pathways, do enrichment analysis then check for overlap of "enriched" pathways 

- Problem with correlation of just enrichments
	- May have highly variable enrichment scores! --> should check this out...

- Could look at genetic correlations when assessing whether enrichment scores should be highly correlated for traits

- If GWAS don't match that should then, it suggests that pathway enrichment doesn't necessarily give much overlap.

## ewas-gwas comparison simulations
Goal of simulations: Help understand the scenarios for which there is no more overlap of EWAS and GWAS genes/pathways than expected by chance.

### Simulation 1
Model how changes in percentage of EWAS hits that are causal influence overlap

overview:
X randomly sampled causal genes
Y randomly sampled consequential genes
N GWAS genes (N determined by empirical data) are randomly sampled from X
N EWAS genes (N determined by empirical data) are randomly sampled from X and Y at proportions determined by a varying parameter

Test: Fisher's Exact test to determine if there is more overlap between EWAS genes/pathways and GWAS genes/pathways than expected (expected determined from the total number of genes/pathways).

### Simulation 2
Model how changes in overlap between causal and consequential genes influence overlap

overview:
GWAS and EWAS genes taken from the empirical data
X causal genes
Y consequential genes
Causal genes = GWAS genes + randomly sample from all genes to make up X causal genes
Consequential genes = EWAS genes (except those also GWAS genes) + randomly sample from all genes that aren't causal genes
All trait genes = Causal genes + consequential genes

Test: Fisher's exact to determine if there is more overlap between EWAS genes/pathways and GWAS genes/pathways than expected (expected determined from the number of genes from 'all trait genes')




