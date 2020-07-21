# PhD project meeting notes 2020-07-20

Attendees: Tom B, Gib

## Agenda

* ewas-gwas comparison project simulations
* making EWAS data available
* AOB

## ewas-gwas comparison project simulations

Simulations assessing method seems to show there is more power using other pathway databases... [methods_test_gene_up_auc_plot_all_databases.pdf](methods_test_gene_up_auc_plot_all_databases.pdf)

__NOTES:__

* Sort out sims by:
	+ re-running GO + KEGG whilst mapping to only protein coding genes
	+ Altering n-genes for things that map just to protein coding genes
	+ re-running stringdb simulations with protein coding genes only
* Once all that is done the plan is for results:
	+ Simulation set one -- display results for all methods AND pathways
	+ Empirical analyses -- display results for only enrichment score correlations AND best powered pathway. Then put other pathway res in supplement
	+ Simulation set two -- same as empirical analyses
	+ All GWAS vs. some EWAS, just use best pathway and don't include other shite to complicate things

## making EWAS data available

So I've got uploading to zenodo working-ish

Tried uploading all 400 in zip file and it gave me an error saying the file was too large to upload via an API (file is about 5Gb, but zenodo can take 50Gb files). 

Then tried dividing up into zipped folders of 40 and got a "ConnectionError"

Then tried just taking 10 files and putting them into a zipped folder of 10 and got a "json.decoder.JSONDecodeError"

After sequentially removing files from that folder I found it worked at 8 files in the folder. Although I'm not sure if this is a function of number/size of the files or the actual files themselves. Could be a problem with one of the ewas files for some reason. Still to be tested...

__NOTES__:

* Could just ask Peter Matthews to help out! 

## AOB

* Please can have overarching thoughts on intro ready for discussion on Thursday