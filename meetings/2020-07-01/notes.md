# PhD project meeting notes 2020-07-01

Attendees: Tom B, Gib, Tom G, Nic

## Agenda

* General updates
* Run through of ewas-gwas comparison paper

## General updates

* Currently inputting data into the EWAS Catalog
	+ Don't think this will take a huge amount of time - roughly 1 month I think
	+ As technical changes have been made, I can get going with scripts to analyse the data as soon as the manuscript for the ewas-gwas comparison paper is finished
* Started reformatting results chapters

## Run through of ewas-gwas comparison paper

see [ewas-gwas-comparison-paper.pptx](ewas-gwas-comparison-paper.pptx) (or click __[here](ewas-gwas-comparison-paper.pdf)__ to view pdf on github)

__NOTES:__

* We can never tell if using both EWAS and GWAS is redundant because we're not capturing all of the genome or all of the methylome. But what we can say is if they tend to be sampling from the same distribution or not. So if there were 100 genes related to a trait, GWAS had the power to pick up 10 and EWAS had the power to pick up 20 then you'd expect there to be at least 2 genes that overlap. If they're not sampling from the same distribution e.g. if EWAS is sampling from just downstream genes and GWAS is just sampling from upstream genes then you'd expect lower overlap and if EWAS was sampling almost randomly from the genome (because of confounding) then you'd also expect lower overlap.  
* When assessing physical overlap, could do some sensitivity analyses to change the distance and see if that really alters the number of overlapping sites found
* When assessing pathway overlap, we could use EpiGraphDB to extract pathways
* It might be a good idea to make the pathway overlap of all GWAS and EWAS available somehow. Could do so via epigraphdb with an R package that links to the data through some API.
* Write manuscript in an Results-Methods format
* Make the intro as short as possible as the concept is pretty straight forward and the methods need more explaining