# PhD project meeting notes 2020-07-10

Attendees: Tom B, Gib

## Agenda

* h<sup>2</sup><sub>EWAS</sub> paper phenotypes
* ewas-gwas comparison simulations
* AOB

## h<sup>2</sup><sub>EWAS</sub> paper phenotypes

Phenotypes are cleaned up. Had to chuck a few out because they're completely meaningless. Such as phenotypes that reflect the accuracy of some coding tool. Still have 401 phenotypes though

Need a way to make data available. Was thinking zenodo, already have an account, but main issue is uploading the data takes FOREVER as my upload speed isn't very fast. Could use bc4 and their zenodo's API to make upload speed faster? 

Have also added in supplementary table with these phenotypes and number of hits each phenotype has at the two main P val thresholds used and updated the numbers in the paper.

## ewas-gwas comparison simulations

### Using epigraphDB

* Maps genes to pathways via proteins. This restricts to protein coding genes so the number of genes reduces from roughly 60000 to roughly 18000. Don't think this is really an issue - as long as method across study types (EWAS and GWAS) is the same...
* It's unclear how they are mapping protein-protein interactions. For now can use their defaults, but need to find out what these are...
* Can map protein-protein interactions via an intermediate protein. Again, doesn't really matter.
* Most proteins are not part of a reactome pathway, which I thought combined various other pathway databases, but on closer inspection it doesn't. 
	+ How they add pathway info: "An external domain expert provides his or her expertise, a curator formalizes it into the database structure, and an external domain expert reviews the representation"
* From this I think the databases can be used together, BUT it may look a little better and read easier if all our analysis went through epigraphdb -- so we'd have reactome as our pathway database and a combination of intact and stringdb as our protein interaction database.
* Main issue is understanding how epigraphdb defines protein-protein interactions

### Results narrative

See [simulations_report.pdf]


## AOB 

Turned down job offer

Streamlining analysis in python...