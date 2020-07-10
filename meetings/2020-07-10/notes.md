# PhD project meeting notes 2020-07-10

Attendees: Tom B, Gib

## Agenda

* h<sup>2</sup><sub>EWAS</sub> paper phenotypes
* ewas-gwas comparison simulations
* AOB

## h<sup>2</sup><sub>EWAS</sub> paper phenotypes

Phenotypes are cleaned up. Had to chuck a few out because they're completely meaningless. Such as phenotypes that reflect the accuracy of some coding tool. Still have 400 phenotypes though

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

Not sure adding simulations containing actual empirical data adds much. If we can't make it clear exactly what these simulations mean or how they fit in by the end of the meeting I want to drop them.

Results narrative without it:
1. Little physical overlap
2. These scenarios would mean we would likely detect overlap
3. We didn't detect overlap (thus either no meaningful overlap or too little to detect)
4. There is more overlap between EWAS and GWAS of different traits in some cases

Results narrative with extra simulations:
1. Little physical overlap
2. These scenarios would mean we would likely detect overlap
3. We didn't detect overlap
4. From the empirical data, it is likely the overlap between causal and consequential genes is this ([simple_simulation4_gene.pdf](simple_simulation4_gene.pdf), [simple_simulation4_go.pdf](simple_simulation4_go.pdf), [simple_simulation4_kegg.pdf](simple_simulation4_kegg.pdf)), but that depends on other parameters too...
5. There is more overlap between EWAS and GWAS of different traits in some cases

__NOTES__:

- Other set of simulations do show something -- or could be useful at least. They are concerned with the underlying architectures! 
- For each trait characterise using a radar plot
- Change sim4 to see if you get different distributions when you add in a trait that has loads of gwas and ewas gene overlap! 
- If there is some change then need to make the 'n-genes' parameter more dynamic as it looks as though the number of genes is just drowning out any signal
- Also need to check how much overlap is due to non-coding regions --> Can just use hgnc mappings to check this
- Might be interesting to check if there is some kind of common theme in terms of the genes that do overlap


## AOB 

Turned down job offer

Streamlining analysis in python...