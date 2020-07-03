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

Could add to discussion --> Traits may be duplicated, but they are not correlated and the analysis and this shouldn't effect things.

## ewas-gwas comparison simulations

[gene-up simulations](methods_test_gene_up_auc_plot_NEW.pdf) make sense, but the [pathway down simulations](methods_test_pathway_down_auc_plot_NEW.pdf) are all over the place...

So the number of genes picked up when doing the pathway down approach and using stringdb just isn't very high at all... This means little overlap and wacky results. [Gene overlap plot](methods_test_gene_overlap_only_res_NEW.pdf) and [pathway overlap plot](methods_test_pathway_overlap_only_res_NEW.pdf).

This doesn't happen with "gene-up" approach because the number of genes are set... and the minimum number of EWAS genes is 25 and the minimum number of GWAS genes is 50 (n-genes x power).

[Genes per pathway](genes_per_pathway_distributions.pdf) and summary tables: 
```
  pathway_id           n_genes
 Length:337         Min.   :   1.0
 Class :character   1st Qu.:  43.0
 Mode  :character   Median :  87.0
                    Mean   : 115.9
                    3rd Qu.: 153.0
                    Max.   :1627.0
  pathway_id           n_genes
 Length:18467       Min.   :    1.00
 Class :character   1st Qu.:    1.00
 Mode  :character   Median :    3.00
                    Mean   :   20.62
                    3rd Qu.:   10.00
                    Max.   :11935.00
  pathway_id           n_genes
 Length:12329       Min.   :   1.00
 Class :character   1st Qu.:   4.00
 Mode  :character   Median :  16.00
                    Mean   :  52.46
                    3rd Qu.:  65.00
                    Max.   :1352.00
```

Guess it'd be best to just alter the parameters to make sure enough genes are captured by the "pathway down" approach and then repeat the analysis with the data from epigraph db???

Need to try and combine simulations in manuscript:
1. Set of arbitrary scenarios show in which situations we have power to detect overlap
2. Using empirical data to estimate which scenario the traits fit into? 

## AOB

Job offer


## To-do

For h<sup>2</sup><sub>EWAS</sub> project

1. just label phenotypes "as is" then add to limitations of the paper.
2. Try and find something to describe some of the phenotypes that aren't clear from their alspac label

For ewas-gwas comparison project

3. Extract data from epigraphdb
4. Set up simulations with that data (both with and without using empirical data!)
5. Write out some narative with the simulations

