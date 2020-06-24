# PhD project meeting notes 2020-06-26

Attendees: Tom B, Gib

## Agenda

* planning genetics jc
* h<sup>2</sup><sub>EWAS</sub> paper
* ewas-gwas comp 

## planning genetics jc

Suggested scheduling for 12 months + having something in place if someone drops out of presenting.

What Matt does is great and I get a fair bit out of it, but seems to be a lot of effort...

## h<sup>2</sup><sub>EWAS</sub> paper

### snp-count ~ h<sup>2</sup><sub>SNP</sub> 

### Other

When I was thinking about the paper I realised I didn't really think about the fact that the time of measurement of phenotypes may impact the results. I checked the phenotypes and there were ~100 that were clinic phenotypes taken from around the same time the blood for DNAm measurements was taken. Most of the rest of the ~300 phenotypes were measured prior to DNAm measurement. 

As a lot of EWAS don't measure DNA methylation at the same time as their phenotype of interest, I don't think this is a big problem, but I think I should add a sentence in the discussion along the lines of: 
"Not only does DNA methylation vary with time, but the covariation of DNA methylation and phenotypes may change over time. This means an h<sup>2</sup><sub>EWAS</sub> estimate may vary with time. This likely also the case for h<sup>2</sup><sub>SNP</sub> estimates (ref), but the magnitude of change over time may be different." 

## ewas-gwas comp

Tried using stringdb as Tom G suggested. Essentially for each potential protein-protein interaction it has different ways of assessing whether they might interact including textmining, annotated pathways, experimental evidence. Then it scores these from 0-1 with 1 being we've detected an interaction here and we're confident that it's true (DOESN'T SAY ANYTHING ABOUT THE STRENGTH OF SPECIFICITY). They also have a combined score, _S_, which takes into account different avenues of evidence,

_S_ = 1 - &prod;<sub>i</sub>(1 - _S_<sub>i</sub>)

where _S<sub>i</sub>_ is one of the roughly 5 different scores.













