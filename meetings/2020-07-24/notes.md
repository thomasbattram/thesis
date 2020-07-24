# PhD project meeting notes 2020-07-24

Attendees: Tom B, Gib

## Agenda

* Thesis intro 
* EWAS-GWAS comparison paper
* AOB

## Thesis intro

Do you want to take a look at the next draft? Or just comment on the additions. I'll probs have it done over the weekend.

Putting a more philosophical spin on things... 


__NOTES:__

Begin with big picture stuff! Maybe opening paragraph should be something more big picture about gene regulation or disease variation. OR could signpost where you're going. Kind of helps tell the reader is what is coming next! 

Gib is sending by end of the day.

## EWAS-GWAS comparison paper

### intro

Struggling to succinctly say why it's important to know if EWAS and GWAS are sampling from the same distribution of genes/pathways.

Can kind of think about it like this:

Little overlap expected because of confounding and reverse causation with DNAm-trait associations BUT would be expected that DNAm is picking up some upstream events (even if not causing changes in trait directly). If large overlap then suggests EWAS haven't added much, but as identifying more sites then there is reason to believe increase in EWAS sample size would yield more biological information than increase in GWAS sample size of same amount. If no overlap then it's unclear if EWAS is identifying any upstream genes and pathways that aren't caused by confounding effects (of course could also be identifying downstream genes + pathways).

Why appraise comparison? --> Both trying to accomplish same things.

Important to make point that r2 is limited in GWAS --> All upstream so heritability limited and spread across potentially lots of predictors so low power.

Triangulation could be mentioned.

Important point: Constraints on GWAS mean we can make certain inferences about the relationship between SNPs and traits. EWAS don't share these constraints. So inference is harder and large overlap suggests they are picking up upstream stuff and so being successful in that regard! 

### results section

Do you have a paper you've written or would recommend to help with writing the results with the simulations I've done? -- Gib sending

Should results section for empirical overlap go like this:
- Used Fisher's exact test (either correlation of enrichment scores or not)
- Little evidence for overlap
- This could be due any overlap being completely at random, or if EWAS and GWAS were identifying similar biological pathways then we might not have power to detect it depending on the genetic and epigenetic architectures of the traits and the power of the studies. 
- Certain architectures (i.e. high percentage of EWAS hits causing trait changes), study power, gene mapping, and pathway database used all play a role in the power to detect overlap between genes/pathways. 
- Brief description of simulations --- issue with this is that we have to back track a bit from we simulated the scenarios TO oh yeah and from these simulations we determined the pathway database we used in the empirical results performed the best

OR should it start with simulations like:
- We know there are various pathway databases and that other factors (listed above) may influence ability to detect overlap above that expected by chance. Therefore we set up simulations to test which databases performed best under which scenarios. 
- Brief description of simulations
- Results of simulations
- Empirical results --- issue with this is it's probably less interesting to have talked about the simulations etc. and then just report a bunch of null results...

SECOND ONE!

Could have two rows of 0.05 and two rows of 1

Could change into lines to avoid weird x-axis stuff with the sim plot.

## AOB

