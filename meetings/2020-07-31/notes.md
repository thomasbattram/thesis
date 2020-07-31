# PhD project meeting notes 2020-07-31

Attendees: Tom B, Gib

## Agenda

* ewas-gwas comp discussion 
* Thesis results chapters
* Intro comments
* AOB

## ewas-gwas comp paper

### Results

StringDB appears to outperform other databases in terms of power to detect overlap: [methods_test_gene_up_auc_plot_all_databases.pdf](methods_test_gene_up_auc_plot_all_databases.pdf). However, to create this database I used stringent cutoff thresholds for confidence scores (CS > 0.9) to define a protein-protein interactions. This meant only 12k genes/proteins remained and so number of pathways the genes identified in empirical analyses is limited... In some cases, we're removing 1/3 of the genes identified in the ewas/gwas... Could re-map and run things again, but don't think it's worth it. Also a little weird to use stringdb + epigraphdb estimated ppi...

`
  trait                           eg eg_in_sdb    gg gg_in_sdb
  <chr>                        <int>     <int> <int>     <int>
1 alcohol_consumption_per_day    313       130   196        84
2 former_versus_never_smoking    260       123    24        16
3 current_versus_never_smoking  1781       784   310        87
4 body_mass_index                227       118   231        86
5 glucose                         11         7    50        24
6 insulin                         30        12     7         4
7 educational_attainment          23        13   303       101
`

### Discussion

Been thinking about discussion of paper and why you might not find correlation between enriched pathways of EWAS and any GWAS even if you had good study power: [pathway-overlap-diagram.pdf](pathway-overlap-diagram.pdf). I'd assume the likely scenario is confounding/reverse causation + CpGs related to lots of different traits downstream... 

This is kind of going to be tested in the 'properties of EWAS' paper - pleiotropy of CpG sites... 

Points I want to make:
* Little overlap suggests new information gained from EWAS
* However, this information is hard to interpret - uncertain what is causing associations + uncertain what impact DNA methylation has on downstream traits
* Limitations



Any other big points to make??

__NOTES:__

Make sure continuity across the paper is clear --> So if you use diagrams to discuss things then make sure these are pointed out before simulations! 

Overlap is low -- simulations look to see what would permit 0 overlap and there COULD still be overlap -- use more informed more knowledge based views of literature

## Thesis results chapters

Should I send them all over?? One is published work and I'm just updating it so that the supplementary is now part of the main text and there is a paragraph linking things...

__NOTES:__

Some meeting notes

## Intro comments

Thesis quality...

See highlighted sections for discussion

__NOTES:__

Will go over thesis stuff in next meeting

## AOB

* Memory in bluecrystal 4... If a job is going to take up more memory does that memory get partitioned automatically across the processors/nodes OR is the memory just the memory used overall? 

* Extracting data from IEU Open GWAS Database files that were needed for all EWAS-GWAS overlap stuff and found that this ID existed in the gwas info (`ieugwasr::gwasinfo()`) "bbj-a-73", but VCF wasn't found in the same format as other GWAS IDs in the data repository (ID/ID.vcf.gz) and the ID itself didn't exist as it's own repo.

* Also there are a fair few VCFs that have 'length 0' apparently...