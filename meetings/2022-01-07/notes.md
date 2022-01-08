# PhD project meeting notes 2022-01-07

Attendees: Tom B, Gib

## Agenda

* [sigma2_hm450 update](#item1) 
* [other updates](#item2)
* [AOB](#aob)

## sigma2_hm450 update <a name="item1"></a>

We have until February 14th now - increased time needed as bc4 is down.

PCs?? - Would it be best to calculate PCs on the 1000 children separately to the rest of the samples?

need to check if data is imputed on HRC! - want genetic data to be imputed in same way 

Use 20 PCs - first few might be batch!

Repeating analyses - remove 1000 random people? or 1000 random non-related people?

[prelim res](new-cohorts-vs-fom1-estimates.png) - without adjustment for PCs AND including relateds

__NOTES:__

To do:

1. Check genetic data imputed to HRC
2. Combine genetic data
3. Generate PCs in unrelateds (see https://gist.github.com/samwalrus/aac96371de8f5c4e70d0de53e60040ce)
4. Project those PCs onto related individuals (see https://github.com/MRCIEU/godmc/blob/master/resources/genetics/pcs_relateds.R)
5. Change code so 20 PCs are used in model
6. Re-run initial analyses 
7. Run analyses in each cohort individually
8. Run analyses 1000 times, removing 1000 (or so) random individuals each time
9. Generate plot comaring sig2hm450 across all different analyses for each trait - so should have point estimates + CI for sig2hm450 in Mums only, dads only, sabre only, kids only, combined, iterations (mean of distribution is point estimate)

Other project ideas (or to do if paper is rejected):

1. what is the "missing" EWAS heritability thing? - extract large EWAS with corresponding traits in ARIES. Assess sigma2hm450 of traits in ARIES. Then use large EWAS to create a DNAm score in ARIES and estimate r2. Then see difference between the 2.
2. Does sample size decrease bias things in EWAS towards the null?? - should be no.

## other updates <a name="item2"></a>

EWAS Catalog paper finally sent off

Tom G gave comments on ewas-gwas comp paper. Caroline messaged me about it and has some comments on it too... but hasn't given me the comments yet. Will work on Tom's comments and send off asap. 

__NOTES:__

Some meeting notes

## AOB <a name="aob"></a>

* Check this out and get back to Gib: https://uob.sharepoint.com/:w:/t/grp-GoDMCMR/EcJpFcwbk1hLjYM-C-NcfCcBHUsSuxvV94l2D5vt1Nm_rg?e=dZwJAb&wdLOR=cF06884C1-6EF0-C04F-A5E5-C96A163DA8FD 