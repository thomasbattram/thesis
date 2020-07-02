# PhD project meeting notes 2020-07-03

Attendees: Tom B, Gib

## Agenda

* h<sup>2</sup><sub>EWAS</sub> paper phenotypes
* ewas-gwas comparison simulations
* AOB

## h<sup>2</sup><sub>EWAS</sub> paper phenotypes

Every time I go back to the analysis/data I find something else a wrong...

Currently unsure how to label phenotypes such as "New carpet in bedroom in past YR". I was thinking that I should just keep many of the phenotype labels like this "as is" and then just label when the phenotype was measured. 

I also found that there were some duplicated phenotypes at different time points, e.g. Time taken to walk 3 metres at FOM2 and FOM3. I double checked the correlation and weirdly they aren't very correlated (r = 0.3). BUT this doesn't mean they don't covary similarly with DNAm at different time points. So I checked the h<sup>2</sup><sub>EWAS</sub> estimates and number of DMPs at various thresholds for this phenotype and they are pretty similar. 

Also many of the same question over different time periods. If I excluded all the duplicates then I'd end up excluding ~90 traits. Ideally I'd combine them all into one phenotype and this is possible for those duplicates in the ~400 traits I've used BUT it seems a little bad to derive these variables post looking at correlation between phenotypes...

## ewas-gwas comparison simulations

[gene-up simulations](methods_test_gene_up_auc_plot_NEW.pdf) make sense, but the [pathway down simulations](methods_test_pathway_down_auc_plot_NEW.pdf) are all over the place...

## AOB

Job offer