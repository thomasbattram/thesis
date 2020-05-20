# PhD project meeting notes 2020-05-12

Attendees: Tom B, Gib

## Agenda

* ewas-gwas comparison simulations and paper
* AOB

## ewas-gwas comparison simulations and paper
Goal of simulations: Help understand the scenarios for which there is no more overlap of EWAS and GWAS genes/pathways than expected by chance.

Simulation 1: Model how changes in percentage of EWAS hits that are causal influence overlap

overview:
X randomly sampled causal genes
Y randomly sampled consequential genes
N GWAS genes (N determined by empirical data) are randomly sampled from X
N EWAS genes (N determined by empirical data) are randomly sampled from X and Y at proportions determined by a varying parameter, ECaG

Test: Fisher's Exact test to determine if there is more overlap between EWAS genes/pathways and GWAS genes/pathways than expected (expected determined from the total number of genes/pathways).

Simulation 2: Model how changes in overlap between causal and consequential genes influence overlap
See Y for illustration

overview:
GWAS and EWAS genes taken from the empirical data
X causal genes
Y consequential genes
Causal genes = GWAS genes + randomly sample from all genes to make up X causal genes
Consequential genes = EWAS genes (except those also GWAS genes) + randomly sample from all genes that aren't causal genes
All trait genes = Causal genes + consequential genes

Test: Fisher's exact to determine if there is more overlap between EWAS genes/pathways and GWAS genes/pathways than expected (expected determined from the number of genes from 'all trait genes')



known parameters:
All genes (AG)
N trait genes (NG)
gwas genes (GG)
ewas genes (EG)

varying:
causal and consequential gene overlap (CaConO)

end goal:
Causal genes (CaG)
consequential genes (ConG)

additional terms key:
overlapping genes (OG)
Trait genes (TG) --> All causal and consequential genes
gwas only genes (GOG)
ewas only genes (EOG)
casual ewas genes (CaEG)
consequential ewas genes (ConEG)
leftover genes (LG)
Overlapping causal and consequential genes (CaConG)
N. = number of  

OG = EG in GG
GOG = GG not in OG
EOG = EG not in OG
LG = AG not in GG and AG not in EG

CaEG = OG and sample N.EOG x CaConO genes from EOG
CaG = CaEG and GOG and sample NG - N.CaEG - N.GOG genes from LG

ConEG = EG - CaEG
CaConG = CaEG and sample (N.CaG - N.CaEG) * CaConO from CaG not in CaEG
ConG = CaConG and ConEG and sample NG - N.CaConG - N.ConEG from LG not in CaG and LG not in ConEG

allgenes = CaG and ConG
