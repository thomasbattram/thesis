# PhD project meeting notes 2020-10-02

Attendees: Tom B, Gib

## Agenda

* Properties of EWAS work
* Updating ewas-gwas comparison scripts
* Updates on everything else
* AOB

## Properties of EWAS work

Charlie ran analysis for each of the 6 LOLA annotation types

If we just look at "encode segmentation" then that would make things easiest I think in terms of talking about genomic regions.

[encode segmentation results](encode_segmentation_or_plots.pdf)

Of roughly 10,000 sites at p<1e-7, roughly 6000 are hypomethylated in relation to trait... If DNAm changes are tagging changes in gene expression, then this is what I'd expect given enrichment for transcribed genes + TSS

How to present these results concisely?? - see notes

__NOTES:__

Things seem same no matter how portion up the CpG sites (i.e. no difference between "all" CpGs and "replicated")

Double check that Charlie sent all results regardless of P value etc. -- not many cell types in encode_segmentation collection

Do chromatin states stuff (ENCODE and ROADMAP)

Present results as something like: There is enrichment across these regions (FIGURE(S)). Then can discuss why this might be. Enrichment at TFBS fits with notion that TFs are what are altering DNAm in relation to traits -- confounding + reverse causation. Also fits with GoDMC --> CpGs of TransQTLs in TFBS too... 

## Updating ewas-gwas comparison scripts

Updating scripts to make second run through easier. 

* Is there a way to search the studies data for the open gwas project like the website? Or do I need to come up with my own "fuzzy" matching code in R?

* Think opengwas project is missing data from a big smoking/alcohol gwas: [pmid=30643251](https://pubmed.ncbi.nlm.nih.gov/30643251/) -- send details 

* Also, the "ieu-b" IDs aren't present here: "/mnt/storage/private/mrcieu/data/IGD/data/public" - is extracting data using that directory reproducible (will it keep being updated??) -- just use the R package!!! 

* Smoking phenotypes... 
	+ miss phenotyped former vs never
	+ current vs never EWAS == ever smoked regularly GWAS? -- should be fine. Could do one of two things: 1. supplementary analyses looking at another smoking GWAS. 2. Just use the results from the "all-vs-all" pathway enrichment correlation stuff!

## Updates on everything else

- Will email Nic + Tom as still no comments on ewas-gwas comparison paper or any other chapters
- Still waiting on others for EWAS Catalog data -- emailed Paul about it as need his GEO data
- Chapter 7 has been edited into the thesis -- Going to have a quick run through then send it over to you. Will highlight things that need to be checked -- 1. acknowledgement of others work, 2. whether to move datasets into "Data sources" section.
	+ Chapter 7 is also very long because of all the supplementary figures and tables that needed to be included
- Discussion comments

__NOTES:__

## AOB

* Mock vivas:
	+ Matt
	+ Josine
	+ Lavinia
	+ Oliver Davis
	+ Gemma 
	+ End of november! 

* Find out about whether the data.bris data has been accepted! and then can submit h2ewas paper! 