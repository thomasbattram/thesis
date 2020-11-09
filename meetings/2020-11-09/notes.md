# PhD project meeting notes 2020-11-09

Attendees: Tom B, Gib

## Agenda

* [properties of ewas](#item1) 
* [Item2](#item2)
* [AOB](#aob)

## properties of ewas <a name="item1"></a>

### plotting transcription factor enrichments

* [plot1](tfbs_enrichment_plot.pdf)
* [plot2](tfbs_enrichment_plot_v2.pdf)
* No plot - just text like "DMPs were enriched for the binding sites of XXX transcription factors in at least one tissue type."

Problem: Don't have data from all tissues for all tfbs... SO could add to the text. "In the ENCODE data available, there were three transcription factors for which the binding sites were confirmed in 10 or more tissues (CTCF in 23 tissues, POL2 in 12 tissues, EZH2 in 10 tissues). There was/wasn't agreement..."

Also figure 4.5 (rendering)

### r-squared

* Moved to sum(r-squared) / N 
* plots?

### cpg characteristics and ewas results

* you ask for beta + SE, but rank transformed so worth giving??

* Seeing if variance is related to replication:
	+ limit to cpgs that have the chance to be replicated
	+ create "replicability" variable = has a CpG been replicated in at least one study? 
	+ can variability predict replicability? -- roc(rep ~ varcpg)
	+ worth doing same for mean methylation and heritability? 

__NOTES:__

Check distributions again. Could use rank transformations as a 

## Item2 <a name="item2"></a>

Some pre-meeting notes

__NOTES:__

Some meeting notes

## AOB <a name="aob"></a>

* AOB item1