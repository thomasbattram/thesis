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

Text should be there. Make plot be like plot 1 (tissue on x-axis), but have five boxes for each tissue (one for each cpg list) instead of faceting it! 

Problem: Don't have data from all tissues for all tfbs... SO could add to the text. "In the ENCODE data available, there were three transcription factors for which the binding sites were confirmed in 10 or more tissues (CTCF in 23 tissues, POL2 in 12 tissues, EZH2 in 10 tissues). There was/wasn't agreement..." -- fine

Also figure 4.5 (rendering) -- fine

### r-squared

* Moved to sum(r-squared) / N 
	+ Need to be able to justify why using "mean" as cutoff!! -- can do so in text and for viva
* plots?

### cpg characteristics and ewas results

* you ask for beta + SE, but rank transformed so worth giving?? 

* Seeing if variance is related to replication:
	+ limit to cpgs that have the chance to be replicated
	+ create "replicability" variable = has a CpG been replicated in at least one study? 
	+ can variability predict replicability? -- roc(rep ~ varcpg)
	+ worth doing same for mean methylation and heritability? -- can just use a logisitc regression model and put them all in the same model...........

__NOTES:__

Check distributions again. Could use rank transformations as a sensitivity analysis

## Item2 <a name="item2"></a>

Some pre-meeting notes

__NOTES:__

Some meeting notes

## AOB <a name="aob"></a>

* AOB item1