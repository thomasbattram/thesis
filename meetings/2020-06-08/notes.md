# PhD project meeting notes 2020-06-08

Attendees: Tom B, Gib

## Agenda

* ewas-gwas comparison: method for measuring overlap
* AOB

## ewas-gwas comparison: method for measuring overlap

### method 1
1. Extract ANY pathways tagged by EWAS/GWAS
2. Test to see if there is more overlap than expected by chance

Notes on method:

* Allows comparison it always gives pathways
* Some pathways cover so many genes that even when no genes overlap there will be a lot of pathway overlap (although not always more than expected by chance)
* Quick to run and simple to interpret

### method 2
1. Extract ENRICHED pathways tagged by EWAS/GWAS
2. Test to see if there is more overlap than expected by chance

Notes on method:

* Makes things far more specific and along with method 1 should give the upper and lower bounds for overlap
* Not enough enriched pathways to check overlap most of the time... --> for alcohol consumption per day, only 2 ewas pathways and one gwas pathway "enriched" 

### method 3
1. Run enrichment tests for all pathways and extract ORs
2. Test correlation between ORs

Notes on method:

* Haven't tried using permutations to estimate what the null is...
	+ Could say any correlation with adjusted-p < 0.05 gives evidence for some correlation (but can get this with very small |r|)
* Need to test whether non-parametric method is better for assessing correlation (remember that r assumes that E(Y|X) is linear!)

### simulations for looking at methods

See code for testing whether there is much power to detect whether there is more of an overlap than expected by chance: [comparing_overlap_methods_sims.R]

Old simulations kind of give results for the current method: see [simple_simulation3_go_overlap_OR.pdf] and [simple_simulation3_kegg_overlap_OR.pdf]. 

They show that there really isn't much power to detect overlap when it is really there (i.e. both ewas and gwas are causal) and when it isn't really there (i.e. when neither are causal). 

