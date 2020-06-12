# PhD project meeting notes 2020-06-12

Attendees: Tom B, Gib

## Agenda

* h<sup>2</sup><sub>EWAS</sub> manuscript
* ewas-gwas comparison: method for measuring overlap
* AOB

## h<sup>2</sup><sub>EWAS</sub> manuscript

Nic trying to get comments back by the end of the day

## ewas-gwas comparison: method for measuring overlap

See plots: [methods_test_auc_plot.pdf](methods_test_auc_plot.pdf) and [methods_simulations_overall_res.pdf](methods_simulations_overall_res.pdf).

__NOTES__

Try a pathway down approach! -- i.e. for a trait there are X pathways. Then for the GWAS genes and EWAS genes sample from these pathways. Then map these genes to pathways and check gene/pathway overlap. Worth also varying the amount of pathway overlap! Double check didn't do something similar already, feels familiar...

Also potentially worth making an R package to let users input positions/genes and have then output which GWAS the users positions/genes correlate with in terms of pathways

