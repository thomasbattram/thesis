# PhD project meeting notes 2020-08-14

Attendees: Tom B, Gib

## Agenda

* Job 
* Properties of EWAS
* AOB

## Job

Will be applying

__NOTES:__

Use interview as an opportunity to interview them! 
Be clear about you what you want from job! 

First post-doc is quite important... With Doug, learning LMM, could end up with 

## Properties of EWAS

### Issue 1: bias due to ARIES contributing wealth of data

- Not an issue because the number of CpGs identified is actually fairly low. Only really an issue when looking at traits, but can just mention that...

### Issue 2: Haven't collected variance explained data

- Can estimate rsq!!!
	+ rsq = (t^2) / (t^2 + n - 1) -- t is pretty much just z for large sample sizes

- Can also use this to estimate the effect estimates per SD increase
	+  rsq = vx / vy 
	+ vx = b^2 * var(x)
	+ b = sqrt(rsq / var(x)) 

### Issue 3: So many CpGs identified as DMPs -- roughly 350k

- define an EWAS as a study aiming to look at changes in DNA methylation between the same samples that differ only by the trait of interest (e.g. height or a disease). This would exclude things like age and cross-tissue analyses and so should remove some of the analyses that gave loads of hits!
- Could also do some sensitivity analyses where we remove actual EWAS with crazy high numbers of CpGs... -- e.g. the rheumatoid arthritis one

### Issue 4: Getting variability and avg DNAm data

- GoDMC has data on both variance and average methylation levels. Should also have data for each cohort. Gib will send this over.

- Need to test for heterogeneity between cohorts and remove any mean methylation levels or variances that aren't consistent across cohorts.

### Issue 5: Getting DNAm heritability data

- can't access DNAm heritability results here: [http://www.epigenomicslab.com/online-data-resources](http://www.epigenomicslab.com/online-data-resources/)

- can use estimates from van dongen study or another study - Gib sending over estimates

### ANOTHER IDEA - CELL SPECIFICITY

- Cell type specificity is obvs a big issue 
- Also could be missing a lot of stuff by not using single cell stuff
- There is correlation between DNA methylation sites across tissues, suggesting stability in DNAm, but would we expect to find associations at these positions across tissues? 
	+ If this stability in DNAm just reflects reliable probes measuring those sites well then the associations track across tissues, but we may be missing plenty more that are poorly measured
	+ However, the stability in DNAm across tissues could reflect the redundancy of DNAm at those sites. The sites that correlate across tissues may be reflected by either constant or little gene expression at nearby genes. For example, correlation at housekeeping genes is expected.
- Could group CpGs by conserved across tissues vs. not conserved and look at gene expression of nearby genes and/or specifically house keeping genes.
- Josine may have some data on correlation between tissue types, but look around the literature first


For enrichment analyses - can have a separate repo for Charlie, so can be completely up front about what her contributions were to the project! 


## AOB

* Peter Matthews got back to me about making data available and just sent me this: http://www.bristol.ac.uk/staff/researchers/data/publishing-research-data/. and said "The IEU does not have an RDSF space dedicated to this. Most PIs or programme leads should have a 5TB RDSF space which you can use for this process." If you don't have space, you need to: 1. Register as a data steward and register the project, 2. Make me a data deputy, 3. Wait for me to sort everything out, 4. request final data publication when I've set it up.





