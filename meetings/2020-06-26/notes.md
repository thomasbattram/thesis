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

### Feedback/questions on the gwasvcf package

If I'm using the genetics.binaRies package anyway, is there any point in setting bcftools? 

It says on the gwasvcf package site that it has functionality to clump the data, but I couldn't find that functionality... ended up using the ieugwasr package instead.

Rest was pretty simple! 

### snp-count ~ h<sup>2</sup><sub>SNP</sub> 

Unsure about memory with bluecrystal...

Weird error with `ld_clump()` function in ieugwasr package. 

`Clumping ukb-d-20542, 3 variants, using EUR population reference
PLINK v1.90b6.10 64-bit (17 Jun 2019)          www.cog-genomics.org/plink/1.9/
(C) 2005-2019 Shaun Purcell, Christopher Chang   GNU General Public License v3
Logging to /tmp/RtmpTuWy3r/file7c43596e0875.log.
Options in effect:
  --bfile data/1kg-data/EUR
  --clump /tmp/RtmpTuWy3r/file7c43596e0875
  --clump-kb 10000
  --clump-p1 0.99
  --clump-r2 0.001
  --out /tmp/RtmpTuWy3r/file7c43596e0875
128240 MB RAM detected; reserving 64120 MB for main workspace.
8550156 variants loaded from .bim file.
503 people (0 males, 0 females, 503 ambiguous) loaded from .fam.
Ambiguous sex IDs written to /tmp/RtmpTuWy3r/file7c43596e0875.nosex .
Using 1 thread (no multithreaded calculations invoked).
Before main variant filters, 503 founders and 0 nonfounders present.
Calculating allele frequencies... done.
8550156 variants and 503 people pass filters and QC.
Note: No phenotypes present.
Warning: No significant --clump results.  Skipping.
Error in file(file, "rt") : cannot open the connection
Calls: lapply ... extract_data -> ld_clump -> ld_clump_local -> read.table -> file
In addition: Warning message:
In file(file, "rt") :
  cannot open file '/tmp/RtmpTuWy3r/file7c43596e0875.clumped': No such file or directory`

So for a gwas dataset there were 3 hits at P<5e-8, but plink hasn't said they were removed from the dataset (i.e. not in reference panel), yet it says 'No significant --clump results'. To me this warning indicates there were no results with P< p1 (p1 = 0.99...). 

Excluding that result: 

h<sup>2</sup><sub>SNP</sub> associated with the presence of a GWAS hit, beta = 21.9 [95%CI 19.6, 24.1] and the association between number of SNPs identified (when the number is above 0) and h<sup>2</sup><sub>SNP</sub> (mean increase of 1.5, [95%CI 0.93, 2.5] SNPs when h2SNP increases by 0.1).

So the association is larger than n-DMPs ~ h<sup>2</sup><sub>EWAS</sub> association.

### Other

When I was thinking about the paper I realised I didn't really think about the fact that the time of measurement of phenotypes may impact the results. I checked the phenotypes and there were ~100 that were clinic phenotypes taken from around the same time the blood for DNAm measurements was taken. Most of the rest of the ~300 phenotypes were measured prior to DNAm measurement. 

As a lot of EWAS don't measure DNA methylation at the same time as their phenotype of interest, I don't think this is a big problem, but I think I should add a sentence in the discussion along the lines of: 
"Not only does DNA methylation vary with time, but the covariation of DNA methylation and phenotypes may change over time. This means an h<sup>2</sup><sub>EWAS</sub> estimate may vary with time. This likely also the case for h<sup>2</sup><sub>SNP</sub> estimates (ref), but the magnitude of change over time may be different." 

### Submitting

Sent off alspac checklist. Happy to submit when I get that back?

## ewas-gwas comp

Tried using stringdb as Tom G suggested. Essentially for each potential protein-protein interaction it has different ways of assessing whether they might interact including textmining, annotated pathways, experimental evidence. Then it scores these from 0-1 with 1 being we've detected an interaction here and we're confident that it's true (DOESN'T SAY ANYTHING ABOUT THE STRENGTH OF SPECIFICITY). They also have a combined score, _S_, which takes into account different avenues of evidence,

_S_ = 1 - &prod;<sub>i</sub>(1 - _S_<sub>i</sub>)

where _S<sub>i</sub>_ is one of the roughly 5 different scores.

So to incorporate stringdb data into the analysis I essentially said for any one protein, all the genes linked with that protein are those mapped to all the proteins that one protein interacts with at a given score threshold. I used 0.9 as the threshold. See [proteins-linked-to-genes.pdf](proteins-linked-to-genes.pdf) for an illustration of how genes are linked to a protein (mapping of genes to proteins by genomic position).


Plenty of protein-protein interactions with combined score >0.9. 











