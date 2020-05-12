# PhD project meeting notes 2020-05-12

Attendees: Tom B, Gib

## Agenda

* general updates
* ewas-gwas comparison simulations and paper
* AOB

## general updates

* Sent out h<sup>2</sup><sub>EWAS</sub> paper. 
	+ Told Doug he doesn't really need to comment on this version. 
	+ Also I ended up not condensing the intro too much. The current length of the manuscript is still pretty long, I think a lot of the info there is needed. Can cut down when submitting if needs be.

* We decided on a pretty simple upload button for the EWAS catalog. Meeting about it tomorrow, but essentially as long as there is some place people can upload data for when it's submitted then that'll be great. I'm going to say to Paul and Matt that I want 1. to only spend max 1 more week on automating user upload and 2. to have everything else ready 

* Started writing intro

__NOTES:__

* When writing intro, think about exactly what you want to convey to the reader. It doesn't need to be like a lesson, but more of a prelude to the work!

## ewas-gwas comparison simulations and paper

see `sim_report.pdf`.

__NOTES:__
Change simulations so that the GWAS genes themselves are extracted (not just number) and they are set to be causal in simulations and then all EWAS genes are set to be consequential (unless overlap between consequential and causal genes is 0! Then any EWAS genes that are GWAS genes will have to be causal only!).
Could add a parameter to change the overlap between causal and consequential genes.

NEW INTERPRETATION: As proportion of overlap between causal and consequential genes changes this happens (GWAS and EWAS overlap increases). Based on empirical data, it is likely there is X amount of overlap between causal and consequential genes/pathways.

## AOB

Gib is going to plan the future work required for his fellowship when he has the chance! Could also think about writing a grant to do some quant gen work using the GWAS data in IEU GWAS database...

