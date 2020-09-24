---
author: 'Thomas Battram'
date: 'December 2020' # Month and year of submission
title: "Complex trait architecture through the lens of epigenome-wide association studies"
university: "University of Bristol"
faculty: "Health Sciences"
school: "Bristol Medical School"
group: "MRC Integrative Epidemiology Unit"
degree: "Population Health Sciences"
logo: figure/index/UoBcrest.pdf # logo will only show on PDF
bibliography: bib/thesis.bib # location of your bibliography 
csl: csl/american-journal-of-epidemiology.csl # location of your referencing style 
knit: "bookdown::render_book" # doesnt need changing 
site: bookdown::bookdown_site # doesnt need changing 
toc-depth: 4 # change for the depth of the table of contents - 1 gives two levels, 2 gives 3 levels etc...
lot: true 
lof: true
space_between_paragraphs: true
graphics: yes
fig_caption: true
header-includes:
    \usepackage{tikz}
    \usepackage{booktabs}
    \usepackage{longtable}
    \usepackage{siunitx}
    \pagestyle{plain}
output: 
  thesisdown::thesis_pdf: default
#  thesisdown::thesis_gitbook: default
#  thesisdown::thesis_word: default
#  thesisdown::thesis_epub: default
geometry: "left=1cm, right=1cm, top=1cm, bottom=1cm" # This doesn't work
abstract: |
  <style>
  body {
  text-align: justify}
  </style>
  
  DNA methylation is part of the molecular machinery governing regulatory processes in human cells. These regulatory processes are ultimately what differentiates healthy and unhealthy individuals. Over the previous ten to fifteen years, technologies have evolved such that large scale measurement of DNA methylation has become a reality. With this technological advent, has come the uptake of studies assessing the association between DNA methylation and complex traits, aiming to identify biomarkers and understand their nature at a molecular level. These studies are known as epigenome-wide association studies (EWAS). A common theme across EWAS is the identification of very few sites in the genome for which changes in DNA methylation reliably associate with the trait of interest. This thesis explores potential explanations for this trend and further examines whether EWAS results are likely to add to our understanding about the underlying biology of complex traits. <br>
  
  To start assessing what can be learnt from previous EWAS, I led the largest collection of EWAS results to date and created a web resource for storing and querying these data. <br>
  
  These data were utilized to determine patterns in associations relating to experimental design, probe characteristics and genomic contexts. It was observed that some EWAS findings were likely due to unaccounted for biases, such as batch effects and cell composition. By removing suspect results, it was also demonstrated that characteristics of DNA methylation, such as the variance, mean methylation level and heritability explained some of the variation in EWAS effect estimates (over 10%). It was also observed that the proportion of trait variance correlated with changes in DNA methylation varied drastically at each site and across complex traits. <br>
  
  To quantify the total variation in complex traits captured by DNA methylation, as most commonly measured in EWAS, methods developed to estimate the total contribution of common genetic variants to phenotypic variation (SNP-heritability) were re-purposed. Using 400 traits, evidence was provided, that for many complex traits, the variance captured by DNA methylation was small (close to zero),  suggesting the sites measured currently in EWAS are unlikely to be pertinent to the variation of many complex traits. <br> 
  
  After finding the predictive capacity of DNA methylation was low, I sought to understand the potential of EWAS to uncover novel aetiological aspects of complex traits. Simulations and empirical data analyses were undertaken to assess whether the associations observed in EWAS provide new biological information on top of that provided by genome-wide association studies (GWAS). It was found that the genes and pathways identified by EWAS were substantially different from those identified by GWAS of corresponding traits. Facets of trait aetiology may still be explored through EWAS, but the largely different set of genes and pathways identified suggests the majority of EWAS results here are due to confounding and reverse causation. <br>
  
  Finally, to further explore the extent confounding could explain some EWAS findings, Mendelian randomization (MR) was applied to estimate the association between DNA methylation and lung cancer. Marked differences between the previous observational EWAS results, where DNA methylation at two sites was estimated to mediate over 30% of the effect of smoking on lung cancer, and the MR results, where there was no strong evidence for an effect of DNA methylation on lung cancer, were found. This suggests, even with adjustment for hypothesised confounders, residual confounding is likely still pervasive in EWAS analyses. <br>
  
  The limits of the current EWAS study design have revealed, through the masses of data collected and analysed as part of this thesis, the complexity of the role of DNA methylation in mediating the path from genotype or environment to phenotype.
  
acknowledgements: |
  <style>
  body {
  text-align: justify}
  </style>
  
  I'd like to thank myself for being the GOAT. Everyone else can get in the bin.
publications: |
  Battram,T., Richmond,R.C., Baglietto,L., Haycock,P.C., Perduca,V., Bojesen,S.E., Gaunt,T.R., Hemani,G., Guida,F., Carreras-Torres,R., et al. (2019) Appraising the causal relevance of DNA methylation for risk of lung cancer. Int. J. Epidemiol., 10.1093/ije/dyz190.
  
declaration: |
  <style>
  body {
  text-align: justify}
  </style>
  
  I declare that the work in this dissertation was carried out in accordance with the requirements of the University's Regulations and Code of Practice for Research Degree Programmes and that it has not been submitted for any other academic award. Except where indicated by specific reference in the text, the work is the candidate's own work. Work done in collaboration with, or with the assistance of, others, is indicated as such. Any views expressed in the dissertation are those of the author. <br>
  
  \bigskip
  \bigskip
  \bigskip
  \bigskip
  \bigskip
  
  Signed       
    
  \bigskip
  \bigskip
  \bigskip
  \bigskip
  \bigskip
  
  
  Dated     
abbreviations: |
  \textbf{ALSPAC} - Avon Longitudinal Study of Parents and Children \newline
  \textbf{ARIES} - Accessible Resource for Integrated Epigenomics Studies \newline
  \textbf{AUC} - area under the curve \newline
  \textbf{BMI} - body mass index \newline
  \textbf{CCHS} - Copenhagen City Heart Study \newline
  \textbf{CI} - confidence interval \newline
  \textbf{DMR} - differentially methylated region \newline
  \textbf{EFO} - experimental factor ontology \newline
  \textbf{EPIC} - European Prospective Investigation into Cancer and Nutrition \newline
  \textbf{EWAS} - epigenome-wide assoctation study \newline
  \textbf{FDR} - false discovery rate \newline
  \textbf{GEO} - Gene Expression Omnibus \newline
  \textbf{GTEx} - Gene-Tissue Expression (consortium) \newline
  \textbf{GWAS} - genome-wide assoctation study \newline
  \textbf{h\textsuperscript{2}} - narrow-sense heritability \newline
  \textbf{H\textsuperscript{2}} - broad-sense heritability \newline
  \textbf{h\textsuperscript{2}\textsubscript{EWAS}} - the proportion of trait variation captured by DNA methylation commonly measured in epigenome-wide association studies \newline
  \textbf{h\textsuperscript{2}\textsubscript{SNP}} - SNP-heritability \newline
  \textbf{HM450} - Illumina Infinium HumanMethylation450 BeadChip \newline
  \textbf{HMEPIC} - Illumina Infinium HumanMethylationEPIC BeadChip \newline
  \textbf{HR} - hazard ratio
  \textbf{LD} - linkage disequilibrium \newline
  \textbf{MCCS} - Melbourne Collaborative Cohort Study \newline
  \textbf{MR} - Mendelian randomization \newline
  \textbf{MRM} - methylation relationship matrix \newline
  \textbf{mQTL} - methylation quantitative trait loci \newline
  \textbf{NOWAC} - Norwegian Women and Cancer \newline
  \textbf{NSHDS} - Northern Sweden Health and Disease Study \newline
  \textbf{OR} - odds ratio \newline
  \textbf{PACE} - Pregnancy and Childhood Epigenetics (consortium) \newline
  \textbf{QC} - quality control \newline
  \textbf{REML} - restricted maximum likelihood \newline
  \textbf{ROC} - receiver operating characteristic \newline
  \textbf{SNP} - single nucleotide polymorphism \newline
  \textbf{SV} - surrogate variable \newline
  \textbf{TAG} - Tobacco and Genetics (consortium) \newline
  \textbf{TCGA} - The Cancer Genome Atlas \newline
  \textbf{TRICL-ILCCO} - Transdisciplinary Research in Cancer of the Lung and The International Lung Cancer Consortium \newline
---







<!--chapter:end:index.Rmd-->

# Introduction

DNA methylation is a dynamic, chemical modification to DNA that can occur at millions of sites across the genome. The modification is associated with changes in gene expression and genome stability. Consequently, studying how DNA methylation covaries with phenotypes within human populations has the potential to yield aetiological insights. Further, association studies can identify new biomarkers that could predict future health outcomes or help diagnose current ones. This thesis will focus on the most common contemporary study design for assessing the association between DNA methylation and complex traits in humans, epigenome-wide association studies (EWAS).

To date, there have been hundreds of EWAS performed on complex traits that have identified varying numbers of DNA methylation sites as well as varying strengths of association. The interpretability of such studies has been questioned [@Birney2016] and there are properties of these studies as well as the relationship between DNA methylation and complex traits that are not well understood. For traits in which few or no associations have been identified, it is unknown whether DNA methylation, as measured for EWAS, captures any substantial trait variation. For EWAS that have identified DNA methylation sites, these results may reflect genuine biological effects, but they also may be the product of other events, for example they could have arisen due to technical artefacts [@Price2018], genetic factors [@Gaunt2016], or other strong confounding factors [@Birney2016]. Even if the associations are reliable, it is currently unclear whether identifying and characterizing these associations enhances our current biological understanding of the complex traits assessed. Ultimately, if the goal of an EWAS is to ascertain how DNA methylation influences the trait of interest or vice versa, it is also important to fully explore whether these sites are causally related to the trait.

Knowledge of how much trait variation is captured by DNA methylation arrays and whether the associations in EWAS are likely reliable or helpful in understanding complex trait biology is imperative for the interpretability of future EWAS.

In this chapter I present the historical interpretation of ‘information flow’ in human cells (the central dogma), describe DNA methylation in the context of regulatory processes that augment that information flow, discuss its potential for use in population level studies and describe the current state of EWAS research. Then I explain how we might be able to draw on the methods developed by geneticists to understand 1. what information has been gained from EWAS, 2. what information is left to gain from EWAS and 3. the causal nature of DNA methylation-trait associations identified in EWAS.

## The central dogma of molecular biology

To gauge how molecular mechanisms result in more observable phenotypes, it is important to understand how molecular machinery interacts. The central dogma of molecular biology was originally proposed by Francis Crick [@Cobb2017; @CRICK1958] and described how information flowed from nucleic acids to proteins within cells (__Figure \@ref(fig:central-dogma)__). Crick postulated that information could flow from nucleic acids to proteins, but not from proteins to nucleic acids. By information, Crick was specifically referencing changes in polymer sequence. Although this is generally the process of information flow, it does not describe other complex interactions that impact function without changing polymer sequence. Post-translational and post-transcriptional modifications can influence the lifespan and function of proteins and RNA respectively [@Hafner2019; @Corbett2018; @Wang2014; @Filipowicz2008]. Proteins of the same polypeptide sequence can take on slightly different conformations when interacting with other cellular factors [@Alberts2017] and certain proteins (known as prions) can even alter the conformation of other polypeptides with the same sequence [@Colby2011]. Further, modifications to the DNA and to DNA-bound proteins may have a profound influence on the concentration of certain gene transcripts as well as the post-transcriptional splicing of transcripts [@Kornberg1999; @Gibney2010]. As mentioned, DNA methylation is one such modification that can occur.

(ref:central-dogma-cap) __The central dogma of molecular biology__. The dogma stipulates that sequence changes (that is the addition, removal or mutation of elements) can only occur in the direction of the arrows. 1. DNA replication 2. Transcription 3. Translation 4. Reverse transcription 5. RNA replication 6. Direct DNA-protein translation. 

(ref:central-dogma-scap) The central dogma of molecular biology

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/01-introduction/central-dogma} 

}

\caption[(ref:central-dogma-scap)]{(ref:central-dogma-cap)}(\#fig:central-dogma)
\end{figure}

The importance of these molecular alterations to phenotypic change is exemplified in the developmental stages of human life. Humans start as a single cell and after roughly nine months are transformed into a multicellular organism with trillions of cells, including hundreds of unique cell types. As these cells arise from a single progenitor, they must contain identical genetic sequences (bar somatic mutations which occur at a low rate – recently estimated to be roughly one mutation per cell division [@Milholland2017]). The process by which the body is able to create such diversely functioning cells and tissues, must come from regulation of how the genetic sequence is read and from the regulation of its products.

For reasons which I will describe in more detail later, DNA methylation is now being used widely by epidemiologists to try and understand how molecular changes, that do not involve direct sequence alterations, might result in variation amongst observable phenotypes. In order to understand how DNA methylation might influence observable phenotypes, one must first understand the role it plays within cells.

## DNA methylation as part of the regulatory machinery {#dnam-as-part-of-regulation}
DNA methylation is correlated with gene expression levels and has been hypothesised to contribute to gene regulation [@Suzuki2008; @Siegfried1999; @Bird2002; @Jones2012]. This is the main mechanism by which it is thought DNA methylation influences variability in phenotypes. However, DNA methylation is just one of many epigenetic marks that are involved in gene regulation (__Figure \@ref(fig:epigenetic-marks)__). In this section I describe epigenetics and evidence gathered about the function of different epigenetic marks. 

(ref:epigenetic-marks-cap) __Epigenetic marks__. Graphic taken from @epigenetic-marks-figure__.

(ref:epigenetic-marks-scap) Epigenetic marks

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/01-introduction/epigenetic-marks} 

}

\caption[(ref:epigenetic-marks-scap)]{(ref:epigenetic-marks-cap)}(\#fig:epigenetic-marks)
\end{figure}

### Defining epigenetics
The definition of epigenetics is much debated [@Greally2018]. In the 1940s the ‘epigenetic landscape’ was introduced by Waddington to describe how genes influence cell fates [@Stern2000]. Since then the term “epigenetics” has been used in many forms, so to avoid confusion, throughout the rest of the thesis, I will define epigenetics as: “the study of mitotically (and potentially meiotically) heritable alterations in gene expression that are not caused by changes in DNA sequence” [@Gibney2010]. In an extension to this, epigenetic marks therefore refer to chemical changes to the genome and genome-bound proteins that are mitotically heritable (i.e. changes that remain after cell division) and may influence gene expression without changing the DNA sequence. 

### Histone modifications 
Histones are DNA-bound proteins that when modified can influence chromatin state and transcription factor interactions with the DNA [@Bannister2011]. These proteins are contained in nucleosomes, which consist of four histone proteins, each of which is present twice in the nucleosome. Post-translational modifications can occur to any of the histone monomers and these have been associated with both positive and negative changes in gene expression [@Bannister2011; @Berger2007; @Jenuwein2001]. Histone modifications are numerous and complex in nature. To briefly describe the complexity, there are at least nine types of histone modification that can occur [@Kouzarides2007], each of the histone monomers can be modified across many different sites [@Kouzarides2007; @Berger2007; @Jenuwein2001], and for any one site multiple of the same modification can occur [@Berger2007; @Jenuwein2001]. It is the combination of modifications across all histones that plays a role in gene expression regulation [@Berger2007; @Jenuwein2001]. Furthermore, histone modifications are subject to rapid change upon environmental stimulus to help induce or repress gene expression [@Bannister2011]. The complexity of histone modifications, and the practical difficulties in collecting or assaying samples to assess these epigenetic marks, remains a barrier to their wide-spread measurement for use in population-based analyses [@Birney2016]. They may become far more prominent in the future as our understanding and ability to measure the modifications in a meaningful way increases. 

### DNA methylation {#dna-methylation}
DNA methylation is the addition of a methyl group to DNA, which primarily occurs at the 5’ cytosine of a CpG site. Little is known about the role of non-CpG site DNA methylation in humans and current EWAS tend to only measure CpG methylation. Two papers initially suggested that the function of this epigenetic mark was to repress gene expression [@Holliday1975; @Riggs1975]. Since then, association with various important intracellular processes such as X-inactivation, genomic imprinting and suppression of transposon action have been elucidated [@Riggs1975; @Bell2000; @Yoder1997]. This genomic modification is also conserved amongst a wide variety of species, including various bacteria, plants, fungi, and mammals [@Casadesus2006; @Cokus2008; @Rountree1997; @Jones2012]. Interestingly, one of the hypothesised functions of DNA methylation – protection against ‘parasitic genomic sequences’ – is common to both human cells and bacterial cells [@Jones2012; @Casadesus2006]. However, the relationship with gene expression may not be the same in prokaryotic organisms [@Casadesus2006]. Despite the abundance of research conducted in the area in the last 50 years, the role DNA methylation plays in regulating gene expression within human cells is not fully understood and research is still ongoing. 

One thing research has revealed is that the location of DNA methylation is important to its relationship with gene expression. CpG sites are not randomly distributed throughout the genome but are often found in clusters [@Jones2012] and it is thought that methylation and de-methylation of CpG sites in groups, is what drives their association with regulatory function [@Jones2012]. Clusters known as ‘CpG islands’ are found at the majority of protein coding genes and constitute small areas of the genome that are enriched for CpG sites [@Jones2012; @Illingworth2009]. The location of these islands as well as other CpG sites relative to genes and other regulatory elements is also of importance. Several studies have shown that higher levels of DNA methylation at transcription start sites tends to be associated with a lower levels of gene expression [@Jones2012; @Ando2019; @Deaton2011], but gene body DNA methylation is positively correlated with expression (__Figure \@ref(fig:dnam-functions)__) [@Wolf1984; @Hellman2007]. This suggests that regulation of DNA methylation in clusters at specific sites relative to genes is important in determining observed relationships with gene expression. Supporting this, there are clear biological processes that regulate DNA methylation at nearby sites together, for example, CpGs at transcription factor binding sites can be de-methylated as a group when the transcription factor binds [@Zhu2016]. Further, nearby sites are often correlated [@Jaffe2012; @Suderman2018]. However, there is no evidence to suggest that neighbouring sites do indeed act in tandem or whether it is likely one site from the group is driving regulatory function. This is something I explore in __Chapter \@ref(h2ewas-chapter)__.

These strong associations between DNA methylation and gene expression do not necessarily mean that the addition or removal of methyl groups will actively impact gene expression. Elucidating the causal nature of the association between DNA methylation and gene expression has been fraught with difficulties and has often provided conflicting results. One study showed an enzyme that catalyzes the addition of methyl groups to the DNA, DNA methyltransferase 3A, is required in haematopoeitic stem cells for them to differentiate, suggesting gene expression changes required for differentiation were not possible without addition of methyl groups to the DNA [@Challen2012]. However, studies have provided evidence that DNA methylation is unlikely to initiate the ‘silencing’ of gene expression and may occur at transcription start sites of genes after they’ve already been repressed [@Lock1987; @Ohm2007]. To further complicate things, if DNA methylation does influence gene expression, the mechanism of action is unclear and may depend on the gene being examined. One study showed the presence of DNA methylation at the binding sites of the transcription factor, _MYC_, was inversely associated with its binding [@Prendergast1991], but another study suggested the presence of DNA methylation didn’t have the same impact on the binding of the transcription factor, _SP1_ [@Harrington1988]. Although the body of work presented in this thesis does not aim to explore if and how DNA methylation influences gene expression, it is important to note the relationship between the two isn’t clear when thinking of the implications of DNA methylation-trait associations [@Hemani2017]. This will be discussed further in the following sections.

(ref:dnam-functions-cap) __Simplified diagrams of the associations between DNA methylation and gene regulation__. In _a_, CpG sites are methylated at the promoter region, but not in the gene body, which is associated with lack of gene expression. In _b_, the opposite is occurring.

(ref:dnam-functions-scap) Simplified diagrams of the associations between DNA methylation and gene regulation

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/01-introduction/dnam-gene-expression} 

}

\caption[(ref:dnam-functions-scap)]{(ref:dnam-functions-cap)}(\#fig:dnam-functions)
\end{figure}

## Population-based studies of DNA methylation associations {#dnam-phs}
The importance of DNA methylation in disease has already been established in rare developmental disorders caused by aberrant imprinting patterns [@Wrzeska2004; @Nicholls2000], but the relationship between DNA methylation and complex traits is unclear and is the focus of this thesis. In this section I discuss the study of complex traits, the appeal of studying DNA methylation for public health, introduce the most common study design to assess DNA methylation-trait associations, EWAS, and overview some successes and complications of the work.

### Studying complex trait associations
Using DNA methylation in population-based studies, comprises studying its association with complex traits, which are phenotypes that are caused by a myriad of factors. The phenotypic value of any complex trait can be partitioned into its corresponding genetic ($G$) and environmental effects ($E$) like so

\begin{equation}
	z = G + E
	(\#eq:phenotypic-values)
\end{equation}

Both the environmental and genotypic values can further be partitioned into various effects [@Lynch1998]. It’s important to remember that DNA methylation itself is a complex trait and thus methylation of DNA at a given CpG site, is the result of a variety of genetic and environmental factors [@Jones2012]. However, unless explicitly stated, when discussing complex traits, I will be referring to human health and socio-economic outcomes rather than molecular phenotypes such as DNA methylation and gene expression.

Phenotypic values for any complex trait will vary across the population as each individual has a unique genomic sequence (except monozygotic twins) and is exposed to a variety of different environments, both external and internal.

Studying the associations between complex traits and other measures across the population can help deduce the aetiology of that trait, but phenotypic values may also covary with measures that have no implication for that traits aetiology. Identifying these covariations can still be useful for phenotype prediction.

It should be noted that different fields of study may have different views on the importance of certain measures. As discussed, there is evidence that DNA methylation may be inconsequential to gene expression changes [@Lock1987; @Ohm2007], making it an unattractive measure to study when interested in the aetiology of cellular phenotypes in molecular biology. However, for epidemiological studies, understanding how DNA methylation covaries with complex traits could help provide useful predictors and further could yet yield insights into the underlying biology of complex traits. This will be explained in more detail in the coming sections.

### The potential value of DNA methylation measures to epidemiologists {#appeal-of-dnam}
Epigenetic modifications are of potential interest to those studying any phenotype. Arguably, epigenetics could be required at some level for all phenotypic changes and, if causal, could be the difference between individuals who develop disease and those who do not [@Relton2010]. Further, epigenetic marks are modifiable, which means theoretically it would be possible to prevent or treat disease by altering such epigenetic patterns of individuals [@Weaver2004]. There are large practical issues with this, which are discussed in more detail in __Section \@ref(problems-for-ewas)__. However, even if targeting epigenetic marks is not easy, as long as it is possible to observe them, they could be used as diagnostic biomarkers and predictors [@Birney2016; @Relton2010; @Koch2018; @Hentze2019]. Thus, the ability to measure, and the research in to understanding epigenetic mechanisms, could have broad consequences for public health. 

A major difference between DNA methylation and other epigenetic marks, is that DNA methylation is more stable. Enzymes do exist that can actively de-methylate the DNA, for example the ten-eleven translocation (TET) enzymes, but cell division or excision of the nucleotide is required for full de-methylation of a DNA molecule [@Cortellino2011; @Kohli2013]. Biologically, this suggests DNA methylation might be involved in long-term repression of gene expression, which is thought to be the case for X-inactivation [@Venolia1983], and practically it makes studying the epigenetic mark easier because stability ensures the marks are more resistant to changes after collection of samples. Also, even though it isn’t clear that DNA methylation precedes gene expression regulation, the regulatory processes that govern whether genes are transcribed are linked. There are known examples of how DNA methylation tends to associate with other epigenetic marks, including positive correlation with the histone modification H3K9me3 [@Jones2012] and histone deacetylation [@Jones2012; @Wade2001]. This means measuring DNA methylation may capture regulatory information, even if addition or removal of methyl groups to the DNA would have little impact on gene expression. Recently, it has been shown that epigenetic marks can be used to predict each other with high accuracy [@Ernst2015], adding weight to the argument DNA methylation measurements capture far more than just DNA methylation itself.

### Epigenome-wide association studies {#ewas}
When considering designing a study to assess whether one trait associates with another, one should have _a priori_ hypotheses or evidence that suggest studying the association would be of relevance to scientific understanding and public health. For studying the association between DNA methylation and complex traits, there is an abundance of evidence suggesting this could yield results of relevance. I’ve already explained why this may be: no phenotypic change is possible without some molecular change, DNA methylation is a relatively easy molecular measurement to make and it is known to highly correlate with an important component of cellular regulation – gene expression. Further, DNA methylation has the potential to improve upon the prediction of complex traits beyond what can be done with current epidemiological and clinical measures.

EWAS are the most common study design for assessing the association between DNA methylation and a complex trait. They typically involve measuring hundreds of thousands of DNA methylation sites across the genome in a case-control or cohort setting and using linear models to assess the association between DNA methylation and the trait of interest.

Ideally, in every sample used in an EWAS, DNA methylation would be measured across all sites in the genome. Unfortunately, this is not currently possible and sequencing technologies that offer something similar are often very expensive. There are three alternatives available to DNA methylation studies. Firstly, one could sequence a small portion of the genome if this section is of particular interest, however this candidate gene approach is unlikely to be profitable unless the genes targeted already have good evidence for epigenetic variation with the trait of interest. As complex traits are polygenic [@Lynch1998] and we have incomplete knowledge of their underlying biology, a hypothesis-free approach, that samples from as much of the genome as possible, is preferable. Secondly, measuring DNA methylation on repeat sequences of the genome, such as long interspersed nuclear elements (LINEs) and short interspersed nuclear elements (SINEs), can provide estimates for global DNA methylation changes [@Yang2004]. These measurements indicate if a trait is related to large perturbations of DNA methylation across the genome, but give little mechanistic insight into what effects these changes may be having, as methylation at functional genes is not measured. Thirdly, one could employ an array approach that covers DNA methylation genome-wide at selected sites. This last approach is the most common for population-based studies as it enables measurement of DNA methylation at hundreds of thousands of sites at a relatively cheap price per sample [@Dedeurwaerder2011]. Without capabilities to measure methylation at every site in the genome, one must decide which sites are worth measuring. Current commonly used array technologies include the Illumina Infinium HumanMethylation450 (HM450) BeadChip and the Illumina Infinium HumanMethylationEPIC (HMEPIC) BeadChip, which measure DNA methylation at over 450,000 sites and over 800,000 sites respectively. They cover roughly 1.5-4% of CpG sites in the genome [@Lovkvist2016]. In order to capture what was thought to be the most relevant DNA methylation sites in relation to complex traits, the probes were chosen to map to 99% of RefSeq genes [@Illumina2012]. One reason for which this might have been done, is to help improve interpretation of EWAS findings. Identifying methylation changes at a specific gene suggests investigating the relationship of that gene and the complex trait further may yield interesting results, whereas interpreting complex trait associations with DNA methylation at a site in a relatively uncharacterized region of the genome would be more difficult for obvious reasons.

To measure DNA methylation, these array technologies, as well as sequencing techniques, often begin with bisulphite conversion of the DNA [@Rakyan2011]. This converts any un-methylated cytosine base to uracil and leaves methylated cytosines unchanged [@Li2011]. The DNA samples can then be distributed amongst the array and the probes on the array will bind cytosines present at the regions their sequence corresponds to to [@Li2011]. If a probe binds its target cytosine, then it will fluoresce, and this can fluorescence can be quantified to give ‘beta values’. Beta values range between zero and one, with zero corresponding to no methylation across all DNA samples at the target cytosine and one corresponding to methylation across all DNA samples at the target cytosine. DNA methylation is by nature a binary measurement, but mixtures of DNA samples (i.e. multiple cells) mean that a continuous variable is generated unless single cell procedures are adopted.

This study design has been widely adopted over the past ten years and the relationship between a plethora of traits, from smoking to anthropometric measures to childhood adversities, and DNA methylation has now been studied [@Joehanes2016; @Breitling2011; @Wahl2017; @Yang2013]. There are also large consortia that are pooling samples to gain power for these studies, for example the Pregnancy and Childhood Epigenetics (PACE) consortium [@Felix2018]. A few traits have been identified as being associated with large variations in DNA methylation, one of which is smoking, where strong associations across thousands of sites have been identified and many replicated in EWAS of smoking [@Joehanes2016]. It has been revealed that the association at some sites is driven by smoking causing changes in DNA methylation and over time these DNA methylation changes may be (mostly) reversible by giving up smoking [@Philibert2016]. Also, DNA methylation can be used to predict smoking status, and one study has provided evidence that DNA methylation of a single locus can predict smoking status with high accuracy [@Philibert2020]. Another measure shown to relate to large variation in DNA methylation across the genome is age. Similarly to smoking, DNA methylation makes a highly accurate predictor for age  and is thought to be able to establish whether rate of ‘biological’ aging is different from chronological aging [@Horvath2013; @Jones2015; @Horvath2018]. These studies have shown that large perturbations in the DNA methylome can be related to complex traits and highlight the potential for EWAS to identify accurate predictors for these traits.

### Problems for EWAS {#problems-for-ewas}
Despite the promise of understanding the underlying biological processes related to traits, studying the relationship between DNA methylation and complex traits provides many practical difficulties that often make the results of EWAS hard to interpret [@Birney2016]. 

#### Confounding {#confounding}
One issue that plagues all observational epidemiology, including EWAS, is confounding. This is where the traits of interest share a common cause, which can generate effects and bias effect estimates, hindering correct interpretation of the association between traits. Complex traits are strongly correlated with each other, often in clusters, which can lead to large amounts of measured and unmeasured confounding being present in EWAS. Of course, in order to produce therapies to prevent or treat disease by altering DNA methylation or other parts of the epigenome, causality must be established. Therefore, problems of confounding must be overcome in EWAS to use these results to start developing methods of targeting DNA methylation changes, this is discussed more in __Section \@ref(establishing-causality)__.

#### Cell type heterogeneity {#cell-type-heterogeneity}
As discussed, epigenetic factors guide differentiation of a single pluripotent cell to hundreds of cell types in human development. As these cell types can have large differences in morphology and function, it is clear that epigenetic marks, including DNA methylation, will vary between cell types [@Houseman2012; @Jaffe2014]. This poses two distinct problems for EWAS. Firstly, when collecting samples to measure DNA methylation, unless cells are purified, then a pool of cell types will be present in the samples, each with their own distinct DNA methylation patterns. This can lead to issues of confounding by cell type. For example, in a case control study, cases may be more likely to have increased numbers of CD4+ Th2 immune cells and these cells may on average have a higher level of DNA methylation at site X. In this scenario if one were to take blood cells, measure DNA methylation, and assess the association between DNA methylation and the trait of interest, one might find an association between DNA methylation at site X and the trait, but this may just be function of the increased number of CD4+ Th2 cells present in cases and site X may have no causal relationship with the trait itself. There have been efforts to try and account for cell type heterogeneity in EWAS [@Houseman2012; @McGregor2016; @Teschendorff2017], but to completely prevent its confounding effects, cells should be collected from a homogenous tissue or purified. In addition to, generating false positives, this confounding could mask true effects found within specific cell types. The second problem arising from cell-type specific patterns of DNA methylation is the uncertainty that the cell type being studied is one in which DNA methylation covaries with the trait of interest. Non-invasive cells to collect, such as blood, skin, and saliva, are common amongst epidemiological studies, but it is unclear whether EWAS in these studies are relevant to a large proportion of complex traits. This is studied, with regards to blood, in __Chapter \@ref(h2ewas-chapter)__. Studies have actually shown high levels of correlation between DNA methylation across cell types at many CpGs [@Forest2018], but it is unknown whether the correlated sites are important to trait variation. Further, this correlation may complicate interpretation of EWAS findings with regards to translational potential. Some organs, such as the brain, are difficult to target with therapies so even if a promising epigenetic target is identified, it may be almost impossible to translate this into something clinically useful.

#### Measuring DNA methylation {#measuring-dna-methylation}
DNA methylation arrays face certain technical issues. Some probes map to SNPs, which can lead to incorrect detection of DNA methylation, others map to multiple sites across the genome (i.e. are non-specific) and others may cross-hybridise. Batch effects can also substantially bias results in EWAS [@Price2018]. Considerable effort has been made to characterise the arrays to identifiy potentially faulty probes [@Zhou2017; @Naeem2014] and methods developed (some originally for use in RNA-based studies) to help correct for batch effects [@Leek2007; @Ritchie2015; @Perrier2018]. In __Chapter \@ref(properties-of-ewas)__  I explore the extent to which batch effects tend to be removed in current EWAS and whether EWAS results are enriched for potentially faulty probes not removed by study authors.

#### Complexity of regulatory mechanisms 
EWAS identify single sites in the genome for which DNA methylation variation is associated with a trait of interest. As discussed, DNA methylation at a single site will likely be correlated with DNA methylation at neighbouring sites and other nearby epigenetic marks. This makes inferring mechanism of action very difficult. Differentially methylated region (DMR) analysis is often employed, which aims to determine if multiple neighbouring sites share an association with the trait of interest with the same direction of effect [@Jaffe2014; @Suderman2018]. These give evidence as to whether the sites covary similarly with the trait of interest, but do not provide evidence that the sites are acting independently or not. There are ways to circumvent the issues of biological complexity, but without additional gene expression data these often involve assuming the genes immediately adjacent to DNA methylation changes are of importance to the trait. However, no systematic evaluation of whether this assumption holds true for the majority of cases has been conducted.

#### Treatments {#treatments}
Currently there are therapies used in the clinic that target enzymes responsible for epigenetic alterations, for example DNA methyltransferase inhibitors and histone deacetylase inhibitors [@Piekarz2009; @Nebbioso2018]. They are primarily used to treat cancers, but as with many cancer treatments, are highly toxic. These therapies impact the epigenome globally and do not target any specific regions of the genome. This makes them highly undesirable for most diseases and as of yet there are no epigenetic therapies targeting specific regions of the genome. Methods, such as adapting CRISPR-cas9 enzymes, are being used in laboratories to alter DNA methylation at specific sites [@Pickar-Oliver2019], and some have even achieved _in vivo_ targeted epigenetic modulation in mice [@Liao2017]. However, it is unclear whether these techniques can be scaled up for clinical use in humans and how long it may take to overcome the various complications.


In summary, there is great potential for EWAS to identify sites in the genome that could be targeted for treatment, but there are several challenges still to overcome. A great importance should be placed on using the data available to inform future designs of EWAS to maximise the potential of these studies.


## Using methods from genetics to help inform future EWAS {#genetics-in-ewas}
In order to remedy some of the problems EWAS face and to help understand whether the "experiment" of measuring DNA methylation across many epidemiological cohorts and studies has been successful, we can borrow ideas and methods developed in genetics and genetic epidemiology.

Genetics is concerned with ascertaining the connection between traits and genetic variation. Germline genetic variants, the units of measurement for genome-wide association studies (GWAS), are fixed from conception and the association between these variants and complex traits tends to be unconfounded [@DaveySmith2003; @DaveySmith2014]. Therefore, the properties of these variants and DNA methylation are different and one would expect the genetic and epigenetic architectures of complex traits to differ. However, genetic epidemiologists have had to overcome problems to help interpret GWAS, which are also pertinent to EWAS. These include understanding how much trait variation is captured by all the variants used in the study and how to infer function from genetic variation. Further, cataloging genetic associations has proven an invaluable resource for the research community [@Buniello2019] and these variants can be used as tools to augment the understanding of DNA methylation-trait associations. In this section I briefly describe some examples of these efforts and explain how they might be adapted to help inform future EWAS.

### Catalogues of genome-wide associations {#gwas-catalog}
Cataloging genome-wide associations has a broad range of applications for researchers, from replication of GWAS, to identifying overlapping GWAS signals between traits, to pooling the data to try and understand the genetic architecture of complex traits as a whole. There are multiple databases now available to the genetic epidemiologist community that have catalogued these associations. These include manually curated databases of publicly available GWAS data, The GWAS Catalog, [@Buniello2019] and the IEU Open GWAS Project [@Hemani2018]. A corollary database for EWAS is likely to also provide value for epigenetic epidemiologists. At the very least it would provide an easy tool to assess whether results replicate. Catalogues such as EWASdb [@Liu2019] and the EWAS Atlas [@Li2019] are currently available but fall short of some key researcher requirements including ease of use and access to full summary statistics. The development of a new database, The EWAS Catalog, is the focus of __Chapter \@ref(ewas-catalog)__. 

### Total variance captured by all sites measured genome-wide {#heritability}
In addition to cataloguing the information gained, efforts also need to be made in understanding the epigenetic architecture of complex traits to enable interpretation of these data.

As discussed, the phenotypic value of any trait can be partitioned into genetic effects and environmental effects. Thus, the variation of phenotypic values are the function of the genetic variance ($\sigma^2_{G}$) and environmental variance ($\sigma^2_{E}$),

\begin{equation}
	\sigma^2_{z} = \sigma^2_{G} + \sigma^2_{E}
	(\#eq:phenotypic-variance)
\end{equation}

The environmental effects could be split into an infinite number of different factors, most of which would negligibly influence the phenotypic variance. Knowing the extent to which each factor contributes to phenotypic variation is important for two reasons. Firstly, if a factor substantially influenced phenotypic variation then by modifying that factor one could modify the phenotypic values across a population. Secondly, one can identify which factors may best predict phenotypic values within a population. Currently, it is unknown how much variation in complex traits is attributable to DNA methylation changes. As discussed, assessing whether DNA methylation effects complex traits is difficult, but understanding whether they covary can still help quantify its total predictive capacity. Further, understanding how DNA methylation, as measured in contemporary EWAS, covaries with complex traits can help give insight on the validity of current study designs.

Many EWAS have been conducted and few have identified strong associations that capture substantial complex trait variation. Tissue types used and sites measured may partially explain this. It is a possibility that DNA methylation might not covary with many complex traits, or it could be that the associations between DNA methylation at individual sites are numerous, but the associations at each site are too small to detect with current sample sizes.

By combining information across all sites measured, one could quantify the total variation captured by DNA methylation for a complex trait of interest and so could properly assess the utility of association studies using the tissue types and sites measured.

Methods have already been developed to assess the total contribution of genetic variants measured in GWAS to complex trait variation [@Yang2010; @Speed2012] and in __Chapter \@ref(h2ewas-chapter)__, I repurpose these methods developed to estimate the proportion of phenotypic variance correlated with DNA methylation across a range of phenotypes.

### Inferring biology from signals {#inferring-biology-from-signals}
As discussed, the complexity of cellular processes makes it difficult to infer what consequences a change in methylation at a specific site may have. Similarly, for the majority of SNPs identified in GWAS, the functional change that relates to an association between genetic variation at that site and the trait of interest is unclear. Complex traits themselves are the result of a large number of complicated biological pathways that are determined by potentially thousands of gene products. It is often assumed that the signal from GWAS highlight genomic regions of importance to the trait and thus as a step to investigate the nature of the signal, sites identified are mapped to nearby genes. These genes can then be mapped to pathways and gene set enrichment analysis performed to assess whether the genes identified are present in any particular pathways more than expected by chance. This method has been adopted by epigenetic epidemiologists for use to examine EWAS signal [@Phipson2016]. Given the DNA methylation probes on contemporary arrays were chosen specifically based on their proximity to protein coding genes, this gene mapping technique may actually be more valid for CpG sites.

Establishing causality from DNA methylation signal is difficult (See __Sections \@ref(dnam-phs) \@ref(establishing-causality)__). Thus, when applying gene set enrichment analyses to identify prominent pathways in EWAS signals, the pathways identified may be downstream consequences of one or many confounders rather than of aetiological relevance to the trait of interest. Further, the EWAS signals, and therefore pathways they might influence, may be a consequence of trait variation. This is important to remember when interpreting the results of such an analysis, but it doesn’t render the results useless. There is a huge body of work that characterises gene action and relationships of this gene action with various traits. By mapping EWAS signals to genes and pathways, a path between the trait (or a confounder) and changes in DNA methylation might become clearer. One example of this comes with EWAS of smoking, that have consistently identified DNA methylation at the _AHRR_ gene [@Joehanes2016; @Philibert2012; @Shenker2013; @Zeilinger2013; @Bojesen2017]. This gene is known to play a role in handling toxic substances found in tobacco smoke [@Haarmann-Stemmann2006; @Larigot2018]. Thus, large changes in DNA methylation related to this gene points towards epigenetic changes at that locus influencing the cellular response to smoking. This shows, that despite difficulties in interpreting EWAS findings and subsequent pathway analysis, EWAS can actually add to the pool of information about underlying trait biology when used in conjuncture with other evidence. 

Understanding both the causes and consequences of complex traits are pertinent to intervening on health outcomes. As EWAS has the potential to identify both, it could identify important facets of trait biology missed by GWAS studies; however, it is unclear as to whether the analogous gene set enrichment design adopted by EWAS is currently adding to the information discovered by GWAS. In __Chapter \@ref(ewas-gwas-comp-chapter)__ I compare overlap of GWAS and EWAS signals in this context and discuss the use of both study designs in elucidating underlying trait biology.

### Establishing causality {#establishing-causality}

#### Mendelian randomization
As discussed, population-based studies of DNA methylation suffer from the same limitations as any observational epidemiology study, namely confounding and reverse causation. One method that aims to mitigate confounding is Mendelian randomization (MR) [@DaveySmith2003; @DaveySmith2014; @Richmond2016], which uses genetic variants as proxies for the exposure of interest in an instrumental variable framework (illustrated in __Figure \@ref(fig:mr-diagram)__). Using genetic variants as instruments has the advantage that the direction of effect will always be from instrument to exposure and not vice versa, making interpretation of the studies simpler. Furthermore, unlike environmental phenotypes, that tend to be highly correlated and clustered into groups, genetic variants associated with a trait tend to be unconfounded [@DaveySmith2003; @DaveySmith2014]. In the absence of assortative mating, genetic variants should be distributed randomly across the population, so in effect those grouped by genotype should exhibit differences in exposure, but confounding factors should not differ between genotype groups [@DaveySmith2014]. Assortative mating has been reliably shown to occur with some traits such as social behaviours and anthropometric measures [@Silventoinen2003; @Maes1997; @Eaves1981]. Assortment tends to occur on visible social factors and so intentional assortment based on DNA methylation profiles is very unlikely. However, DNA methylation may associate with factors that are assorted on, for example alcohol consumption [@Howe2019; @Dugue2019], which may lead to unintentional assortment on DNA methylation profiles. The impact this may have on MR studies using DNA methylation has not been explored, and this analysis is beyond the scope of this thesis but is something that should be noted when assessing the reliability of such MR studies.

#### Availability of data for MR
Another advantage of MR is the data it uses. Thousands of GWAS have been conducted giving researchers ample instruments for a wide variety of traits and many of these instruments are easily accessible through databases such as the GWAS Catalog [@Buniello2019] and IEU Open GWAS Project [@Hemani2018]. Furthermore, it isn’t necessary to use individual-level data to conduct MR studies; summary statistics from GWAS are all that is needed to provide data in a two-sample MR framework [@Inoue2010; @Pierce2013]. This is especially valuable to conducting MR studies using DNA methylation data as DNA methylation is not widely measured across cohorts and case-control studies. Thus, without a method to combine summary data from both GWAS of DNA methylation and GWAS of other complex traits, well-powered MR studies would not be possible to assess the potential effect of DNA methylation on complex traits (and _vice versa_).

#### Assumptions of MR
In order for MR analyses to be valid, they must satisfy three instrumental variable assumptions, these are illustrated in __Figure \@ref(fig:mr-diagram)__. Testing assumption one, the instruments associate with the exposure of interest, is simple, but the other two assumptions cannot technically be proven to be true. Horizontal pleiotropy, where genetic variants associate with more variables than just the exposure of interest, can lead to violations in assumptions two and three. Ideally, MR would be performed in the context where the genetic effect on the exposure had been characterised such that the mechanism of action was understood clearly. This would help give evidence against assumptions two and three being broken. Unfortunately, this is rarely possible. However, a plethora of methods have now been developed to test for pleiotropic effects, given the exposure of interest has multiple independent genetic variants reliably associated with it.

(ref:mr-diagram-cap) __Mendelian randomization__. Mendelian randomization can be used to test the causal nature of exposure-outcome relationships provided the assumptions are met. Assumption 1. There is an association between the instrument and the exposure. Assumption 2. There are no associations between the instrument and outcome, except through the exposure. Assumption 3. The instrument is not associated with any factors that confound the exposure-outcome relationship.

(ref:mr-diagram-scap) Mendelian randomization

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/01-introduction/mr-diagram} 

}

\caption[(ref:mr-diagram-scap)]{(ref:mr-diagram-cap)}(\#fig:mr-diagram)
\end{figure}

#### Applying MR in a DNA methylation context
MR can be applied to studies of DNA methylation by using methylation quantitative trait loci (mQTL), genetic variants associated with changes in DNA methylation levels, as proxies for DNA methylation variation [@Relton2010; @Relton2012; @Richardson2018]. As mentioned previously, using a two-sample MR framework is especially useful to help increase power for these studies [@Relton2010]. For each DNA methylation site few independent mQTLs have been identified [@Gaunt2016], which  prevents the use of various tests to examine whether the instruments are likely to be pleiotropic. Further, without reliable associations between SNPs and DNA methylation at some sights, MR cannot be conducted. Both cis-mQTLs (mQTLs within 1Mb of the DNA methylation site) and trans-mQTLs (mQTLs over 1Mb away from the DNA methylation site) have been identified in GWAS of DNA methylation variation. As genetic architecture of DNA methylation changes is also not well understood, the mechanism of action for each mQTL can only be speculated at present. Cis-mQTLs are thought to be less likely to be pleiotropic than trans-mQTLs as the mechanism of action seems more likely to be related to the binding of regulatory machinery that may influence DNA methylation levels [@Relton2012; @Neumeyer2020]. For example, a genetic variant may decrease the affinity of a transcription factor for that region and so the transcription factor will bind less frequently and/or for a shorter period, this would lead to increased methylation at that site [@Johnston2019]. On the contrary, the mechanism of trans-mQTL action, especially those on separate chromosomes to the DNA methylation site of interest, is more likely to be pleiotropic [@Neumeyer2020], for example a trans-mQTL could influence gene expression of a transcription factor that binds many sites and alters their DNA methylation [@Bonder2017], this would make the trans-mQTL associate with multiple DNA methylation sites. Therefore, if one limits mQTLs to those in cis, this gives greater confidence that horizontal pleiotropy isn’t biasing results.

Due to the complexity of cellular regulatory mechanisms (__Section \@ref(dnam-as-part-of-regulation)__), it may be impossible to identify the exact cause of changes in complex traits, even with replicated MR results that give strong evidence of an effect of DNA methylation on a complex trait.

As mentioned, DNA methylation varies both temporally and across cell types. If the instruments used to represent DNA methylation are viewed as influencing life-time differences in DNA methylation between individuals, then temporal variation can be ignored. However, cell type-specific effects are likely to occur for some mQTLs. One could imagine a scenario in which blood cells require a specific gene (gene A) to be expressed that is completely useless in adipose cells, which could mean all adipose cells have 100% DNA methylation at the promoter region of gene A. Thus, any genetic variants that associate with DNA methylation variation in blood would not also associate with variation in adipose cells.

With all this in mind, it is important to maintain the idea that making strong conclusions of causality in the context of DNA methylation is difficult, but triangulating evidence from multiple sources could be key to understanding the role of DNA methylation in underlying trait biology [@Lawlor2016].

Such evidence can come from different sources of statistical methodology that can be used to assess causality in observational studies [@Pearl2010; @Hernan2016; @Hernan2018]. One that has been applied in EWAS includes taking advantage of temporal measurements [@Baglietto2017]. If DNA methylation is measured before the trait of interest, then chances of reverse causation are greatly diminished, although confounding may still be an issue. DNA methylation associations may also be tested across different, relevant tissue types and molecular biology can be used to augment epidemiological evidence. Tools exist to experimentally manipulate DNA methylation at specific regions of the genome in cultured cells or in model organisms [@Pickar-Oliver2019; @Liao2017]. Using a negative control design, one could follow up any findings from an epidemiological study like an EWAS, in the laboratory by assessing if changes in the DNA methylation sites identified have any intracellular impact. This could be done for a variety of tissue types of interest.

To truly provide strong evidence that changes in DNA methylation is causally related to a trait, one must take a cross-disciplinary approach.

## Overview of thesis aims
DNA methylation has great potential for use in an epidemiological sense and as samples with DNA methylation data continue to grow it is important to understand the limitations of EWAS and how to maximise it's potential. My thesis aims to address this by exploring what information has been gained from EWAS (__Chapters \@ref(ewas-catalog) and \@ref(properties-of-ewas)__), what information is still to gain from EWAS (__Chapter \@ref(h2ewas-chapter)__), whether EWAS might add to our biological understanding of complex traits above GWAS (__Chapter \@ref(ewas-gwas-comp-chapter)__) and by applying MR in a particular case, the potential for confounding in EWAS (__Chapter \@ref(dnam-lung-cancer-mr)__). See the flowchart in __Figure \@ref(fig:thesis-flowchart)__ for a graphical depiction.

In __Chapter \@ref(ewas-catalog)__ a database of published EWAS is curated and made publicly available, which will be used in later chapters. The aim of __Chapter \@ref(properties-of-ewas)__ is to analyse the results present in this database jointly to allow the discovery of commonalities across methylome-trait associations and provide a platform to explore what is driving these commonalities. Further, the chapter explores the extent to which published results are reliable by assessing replication rate and whether sites measured by unreliable probes are prominent.

After exploring the information already gained from EWAS, __Chapter \@ref(h2ewas-chapter)__ investigates the information still to gain from EWAS. The aim of the chapter is to apply methods developed to assess SNP-heritability to estimate the proportion of complex trait variation that is associated with sites commonly measured in EWAS. 

__Chapter \@ref(ewas-gwas-comp-chapter)__ will then aim to assess whether the discoveries of EWAS may provide extra biological insight for traits of interest on top of those from GWAS. Tests will be applied to assess whether there is more overlap between the sites, genes or pathways identified by some large EWAS (N > 4500) and their corresponding GWAS than expected by chance.

Finally, __Chapter \@ref(dnam-lung-cancer-mr)__ will apply MR to explore the causal nature of associations between DNA methylation and lung cancer. This application case-study will compare and contrast findings to conventional EWAS estimates to give an example of the potential residual confounding that can be present in EWAS.

(ref:thesis-flowchart-cap) __Thesis flowchart__. Flowchart showing questions being asked in the thesis and the corresponding chapters attempting to help answer them.

(ref:thesis-flowchart-scap) Thesis flowchart

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/01-introduction/thesis-flowchart} 

}

\caption[(ref:thesis-flowchart-scap)]{(ref:thesis-flowchart-cap)}(\#fig:thesis-flowchart)
\end{figure}


<!--chapter:end:01-introduction.Rmd-->

# Data sources {#data-sources}

<!--chapter:end:02-data_sources.Rmd-->

# The EWAS Catalog: a database of epigenome-wide association studies {#ewas-catalog}







## Abstract {#abstract-03}
In recent years, the increase in availability of DNA methylation measures in population-based cohorts and case-control studies has resulted in a dramatic increase in the number of EWAS being performed and published. To make this rich source of molecular data more accessible, a manually curated database has been made containing CpG-trait associations (at P < 1x10^-4^) from published EWAS, each assaying over 100,000 CpGs in at least 100 individuals. The database currently contains these associations from 178 published EWAS as well as full summary statistics for over 180 million association tests of 427 EWAS in the Avon Longitudinal Study of Parents and Children (ALSPAC) and the Gene Expression Omnibus (GEO). It is accompanied by a web-based tool and R package that allow these associations to be easily queried. This database provides a platform for analyses in Chapter 4 and 6. Further, it will give other researchers the opportunity to quickly and easily query EWAS associations to gain insight into the molecular underpinnings of disease as well as the impact of traits and exposures on the DNA methylome. The EWAS Catalog is available at: http://www.ewascatalog.org.

## Introduction {#introduction-03}
Epigenome-wide association studies (EWAS) aim to assess the associations between phenotypes of interest and DNA methylation across the genome [@Relton2010; @Mill2013; @Rakyan2011]. These associations may then be used for disease diagnosis or prediction [@Relton2010; @Mill2013; @Rakyan2011]. Also, unlike genetic variants, changes in DNA methylation are responsive to the environment and so may be targeted for treatment. EWAS of smoking [@Joehanes2016], body mass index (BMI) [@Wahl2017] and aging [@Horvath2013] have shown that various exposures are related to large perturbations in DNA methylation across the genome. Furthermore, a paper recently estimated that over 60% of the total proportion of BMI variation was captured by DNA methylation at about 150 CpG sites [@TrejoBanos2020]. In recent years, there has been a dramatic increase in the number of EWAS being performed and published due to technological advancements making it possible to measure DNA methylation at hundreds of thousands of CpG sites cheaply and effectively. Giving researchers easy access to EWAS outputs will help them gain insight into the molecular underpinnings of disease as well as the impact of traits and exposures on the DNA methylome. Furthermore, current collections of summary statistics have already proven useful to various fields, for example the GWAS Catalog [@Buniello2019] has been cited over 2000 times in papers contributing to new methods and exploring the genetic architecture of a plethora of traits.

At the time of making the database, to our knowledge, there were no databases that had collected well-curated EWAS on all traits (not just diseases) in an online database accessible to researchers. During production one database fulfilled those metrics: EWAS Atlas [@Li2019]. Other databases are available but are limited to certain diseases (e.g. MethHC [@Huang2015]). The EWAS Atlas provides a simple-to-use website with annotated CpG sites and information on traits. Ideally a database of EWAS results will provide summary statistics, including betas, standard errors and p-values where provided from publications, in an easily accessible manner, this enables researchers to explore various aspects of the published data without having to retrieve the published article. For example, researchers might compare effect estimates between studies in the database or check to see if their results are replicated in another published study. At the time of writing, the EWAS atlas platform did not enable users to download effect estimates and standard errors. Another caveat is that there is currently only published data on the platform, not full summary statistics from EWAS. 

The EWAS Catalog aims to improve upon current databases to 1) allow easy and programmatic access to summary statistics for downstream analyses by researchers and 2) provide full summary statistics from a range of EWAS conducted in multiple cohorts. To this end we have produced The EWAS Catalog, a manually curated database of currently published EWAS, 387 EWAS performed in the Avon Longitudinal Study of Parents and Children (ALSPAC) [@Fraser2013; @Boyd2013] and 40 EWAS performed from data from the Gene Expression Omnibus (GEO) database. The process and data inclusion are summarised in __Figure \@ref(fig:catalog-project-workflow)__.

(ref:catalog-project-workflow-cap) __EWAS Catalog project flowchart__. On the left is a brief description of how the CpG-phenotype associations were assembled from published works and on the right is a brief description of the EWAS performed using individual level data.

(ref:catalog-project-workflow-scap) EWAS Catalog project flowchart

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/03-ewas_catalog/project_flowchart} 

}

\caption[(ref:catalog-project-workflow-scap)]{(ref:catalog-project-workflow-cap)}(\#fig:catalog-project-workflow)
\end{figure}

I am not responsible for all the work presented in this chapter. Dr James Staley built the original website. Dr Matthew Suderman has been key in development, and maintenance of the website. Dr Paul Yousefi extracted data from GEO. All three also provided (and continue to provide) expert knowledge to adapt the database to optimise user experience. There was also a team to help gather and input the data. I helped develop and maintain the website, gather and input the data, ran all the EWAS using data from the ALSPAC cohort and the GEO database. The team, led by myself, is continuing to develop and maintain the database. Full acknowledgements to the team can be found on the website: http://www.ewascatalog.org/about/.

## Methods {#methods-03}

### Implementation
The EWAS Catalog web app was built using the Django Python package (https://djangoproject.com). The data is stored in a combination of  MySQL databases and fast random access files [@Li2011] and can be queried via the web app or the R package (www.github.com/ewascatalog/ewascatalog-r/). 

### Overview of publication data extraction
To identify publications, periodic literature searches are performed in PubMed using the search terms: "epigenome-wide" OR "epigenome wide" OR "EWAS" OR "genome-wide AND methylation" OR "genome wide AND methylation".

Our criteria for inclusion of a study into The EWAS Catalog are as follows: 

1. The EWAS performed must contain over 100 humans
2. The analysis must contain over 100,000 CpG sites
3. The DNA methylation data must be genome-wide
4. The study must include previously unpublished EWAS summary statistics

CpG-phenotype associations are extracted from studies at P < 1x10^-4^. All these criteria along with the variables extracted are documented on the website (www.ewascatalog.org/documentation). Experimental factor ontology (EFO) terms were mapped to traits to unify representation of these traits. These EFO terms were manually entered after looking up the trait in the European Bioinformatics Institute database (www.ebi.ac.uk/efo).

Based on these criteria, from 2020-09-24, The EWAS Catalog contained 450213 associations from 605 studies. 

### Overview of GEO data extraction
To recruit additional datasets suitable for new EWAS analysis, the geograbi R package (https://github.com/yousefi138/geograbi) was used to both query GEO for experiments matching The EWAS Catalog inclusion criteria (described above) and extract relevant DNA methylation and phenotype information. The query was performed by Dr Paul Yousefi on 20 March 2019 and identified 148 such experiments with 32,845 samples where DNA methylation and phenotype information could be successfully extracted. From these, the aim was to repeat the analyses performed in the publications linked by PubMed IDs to each GEO record. Thus, I looked up the corresponding full texts for each dataset and identified the main variables of interest. Of the 148 putative GEO studies, only 34 (23%) contained sufficient information to replicate the original analysis. 

### EWAS methods {#ewas-methods-03}

#### Avon Longitudinal Study of Parents and Children (ALSPAC) {#alspac-03}
EWAS were conducted for 387 continuous and binary traits in peripheral blood DNA methylation of ALSPAC mothers in middle age (N = 940), generated as part of the Accessible Resource for Integrated Epigenomics Studies (ARIES) project [@Relton2015-aries].

ALSPAC recruited pregnant women in the Bristol and Avon area, United Kingdom, with an expected delivery date between April 1991 and December 1992 (http://www.bris.ac.uk/alspac/). Over 14,000 pregnancies have been followed up (both children and parents) throughout the life-course. Full details of the cohort have been published previously [@Fraser2013; @Boyd2013]. The EWAS performed for the EWAS catalog were done so using phenotypic and DNA methylation data from the mothers (N = 940).
All continuous and binary phenotypes were extracted from the same timepoint that blood was drawn for DNA methylation assays.

Ethical approval for ALSPAC was obtained from the ALSPAC Ethics and Law Committee and from the UK National Health Service Local Research Ethics Committees. Written informed consent was obtained from both the parent/guardian and, after the age of 16, children provided written assent. The study website contains details of all the data that is available through a fully searchable data dictionary (http://www.bristol.ac.uk/alspac/researchers/access/).

Study data were collected and managed using REDCap electronic data capture tools hosted at ALSPAC [@Harris2009; @Harris2019]. REDCap (Research Electronic Data Capture) is a secure, web-based software platform designed to support data capture for research studies, providing 1) an intuitive interface for validated data capture; 2) audit trails for tracking data manipulation and export procedures; 3) automated export procedures for seamless data downloads to common statistical packages; and 4) procedures for data integration and interoperability with external sources.

Ancestry principal components were generated within ALSPAC mothers using PLINK (v1.9). Before analysis, genetic data went through quality control and were imputed as follows.

Mothers were genotyped using the Illumina human660W-quad genome-wide single nucleotide polymorphism (SNP) genotyping platform (Illumina Inc., San Diego, CA, USA) at the Centre National de Génotypage (CNG; Paris, France). SNPs were removed if they displayed more than 5% missingness or a Hardy-Weinberg equilibrium P value of less than 1.0e-06. Additionally, SNPs with a minor allele frequency of less than 1% were removed. Samples were excluded if they displayed more than 5% missingness, had indeterminate X chromosome heterozygosity or extreme autosomal heterozygosity. Samples showing evidence of population stratification were identified by multidimensional scaling of genome-wide identity by state pairwise distances using the four HapMap populations as a reference, and then excluded. Cryptic relatedness was assessed using a IBD estimate of more than 0.125 which is expected to correspond to roughly 12.5% alleles shared IBD or a relatedness at the first cousin level. Related subjects that passed all other quality control thresholds were retained during subsequent phasing and imputation.

Imputation of mother’s genotype data in ALSPAC was done with ALSPAC children’s data. So, genotypes in common between the sample of mothers and sample of children were combined. SNPs with genotype missingness above 1% due to poor quality were removed along with subjects due to potential ID mismatches. We estimated haplotypes using ShapeIT (v2.r644) which utilises relatedness during phasing. We obtained a phased version of the 1000 genomes reference panel (Phase 1, Version 3) from the Impute2 reference data repository (phased using ShapeIt v2.r644, haplotype release date Dec 2013). Imputation of the target data was performed using Impute V2.2.2 against the reference panel (all polymorphic SNPs excluding singletons), using all 2186 reference haplotypes (including non-Europeans).

After quality control and imputation, independent SNPs (r^2^ < 0.01) were used to calculate the top 10 ancestry principal components.

For all traits, linear regression models were fitted with DNA methylation at each site as the outcome and the phenotype as the exposure. DNA methylation was coded as beta values between 0 and 1. For a particular site, a beta value of 0 represents no methylation being detected in all cells measured and a value of 1 represents all cells being methylated at that site. Covariates included age, the top 10 ancestry principal components, and 20 surrogate variables. 

#### Transforming phenotypic data
Values of continuous phenotypes were defined as outliers and set to missing, then all phenotypes with 100 or more non-missing values were kept for further analysis. To ensure all phenotypes were approximately normal, each of their distributions were examined and then transformed. If a variable was deemed right-skewed, it was log-transformed then its distribution was re-assessed by eye. Square-roots and cube-roots were used to try and approximate normality if log-transformation did not work. If a variable was deemed left-skewed, it was squared, and the distribution re-assessed by eye. 

#### EWAS statistical models
For all traits, linear regression models were fitted with DNA methylation as the outcome and the phenotype as the exposure as for the ARIES data. Twenty surrogate variables were included as covariates. Other covariates were considered, but surrogate variables only were used for two reasons: 1) to help automate the process and 2) because covariates used in the original EWAS were not included with many of the GEO datasets.

Statistical analyses were conducted in R (Version 3.3.3). The smartsva package [@Chen2017] was used to create surrogate variables and the ewaff R package (https://github.com/perishky/ewaff) was used to conduct the EWAS, all p-values are two-sided.

## Results {#results-03}

### Database interface and use
There are two ways to access this large, curated database: through the main website www.ewascatalog.org or by using the R package “ewascatalog”. The website provides a simple user interface, which resembles that of the GWAS catalog [@Buniello2019], whereby there is a single search bar to explore the database and links to tabs that contain documentation on the contents and how to cite its use (Figure 1). Users may enter a CpG, gene, genome position or trait into the search bar and it will rapidly return detail for relevant EWAS associations, including CpG, trait, sample size, publication and association (effect and P value) (Figure 1). This information along with additional information such as ancestry, outcome, exposure units, and tissue analysed are available for download as a tab-separated value (tsv) text file. Unlike other EWAS databases, we provide the option of downloading summary results for both the user’s search and for the entire database. 

(ref:catalog-use-cap) __Using the EWAS catalog__. At the top of the figures is the home page URL, ewascatalog.org. Below that are examples of three types of searches possible: 1. CpG sites, 2. genes and 3. traits. Finally, the results are displayed after searching the catalog for “Depression”. Circled in red is the download button, this button enables the user to download the results of their search as a tab-separated value file. This file will contain the information shown on the website as well as additional analysis information."

(ref:catalog-use-scap) Using the EWAS catalog

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/03-ewas_catalog/using_the_catalog} 

}

\caption[(ref:catalog-use-scap)]{(ref:catalog-use-cap)}(\#fig:catalog-use)
\end{figure}

The R package, along with installation instructions and examples are available at https://github.com/ewascatalog/ewascatalog-r/. Once installed, the database can be queried directly in R using the “ewascatalog()” function similar to the website: simply supply the function with  a CpG site, gene, genome position or trait and the function returns the same output as is downloadable from the website.

## Discussion {#discussion-03}
In this chapter, a database of previously published EWAS and the full summary statistics of 427 newly performed EWAS within ALSPAC and GEO has been established. This is freely available for all researchers to use and provides a platform to explore what information has been gained from EWAS as well as a platform that can be used to pool all existing data to gain new insights into both the EWAS study itself and how DNA methylation associates with traits. Despite the fact The EWAS Atlas has similar aims to The EWAS Catalog, the latter provides full summary statistics, extra information and a user-friendly platform to enable more downstream analyses. 

The EWAS catalog team will continue to collate and upload newly published EWAS and further increase the number of full summary statistics on the website by performing additional EWAS on available datasets and by inviting EWAS authors to provide full summary statistics. Currently work is ongoing to include additional functionality to allow users to easily and systematically compare their EWAS findings to EWAS in the database. With this full summary data, it is possible to make greater strides into discovering the epigenetic architecture of traits.

Therefore, despite the fact no extra information about EWAS was presented in this chapter, a platform has been made that enables us to explore 1) what information has been gained from EWAS and 2) what could explain EWAS associations. This will be explored in the next chapter.


<!--chapter:end:03-ewas_catalog.Rmd-->

# Properties of epigenome-wide association studies {#properties-of-ewas}

















## Abstract {#abstract-04}
Understanding the nature of EWAS associations is imperative for biological inference from these studies. This understanding may also impact future study design. Of the data in the EWAS Catalog, 9.9% of reported associations are from CpGs measured by unreliable probes and 20.8737864% of studies did not account for both batch effects and cellular composition. Suggesting, some associations may be false positives. However, characteristics of DNA methylation also likely partly explain some EWAS associations - heritability and variability of DNA methylation explained 0.084% of the variance of effect EWAS effect sizes. This study also identifies associations at sites common to multiple traits. cg06500161 _ABCG1_ associated with 71 traits, which were all traits relating to weight, metabolites or type-2-diabetes. This highlights the potential to use the data collected for the EWAS Catalog in __Chapter \@ref(ewas-catalog)__ to generate new hypotheses and connect DNA methylation changes to the broad range of potential phenotypic changes.

## Introduction {#introduction-04}
Learning from successes and mistakes helps drive forward development. Hundreds of epigenome-wide association studies (EWAS) have been conducted in the last 10-15 years, yet no cross-EWAS studies, comparing results across a large group of EWAS results has been performed. By exploring the patterns of association across a large group of EWAS, one can discover potential explanations for the results found, that may shed light on failings in the literature as well as shared epigenetic architectures across traits.

Since the inception of EWAS, it has become clear that batch effects and cellular heterogeneity can generate false positives and bias effect sizes [@Price2018; @Forest2018; @Jaffe2014]. However, there are examples of replication amongst EWAS results, [@Nano2017; @Kaushal2017; @Morris2017; @Hedman2017; @Braun2017; @Teschendorff2015; @Zeilinger2013] and further, use of triangulation can be used to bolster evidence that changes in DNA methylation estimated are unlikely due to bias. By way of an example, changes in DNA methylation at _AHRR_ have been replicated across multiple smoking EWAS [@Zeilinger2013; @Elliott2014; @Joehanes2016; @Bojesen2017] and as functional reaseach has implicated this gene in handling toxic substances found in tobacco smoke [@Zudaire2008], it seems unlikely these findings are chance occurances. 

The characteristics of the DNA methylome may also explain some EWAS findings. Heritability varies across DNA methylation sites [VanDongen2016; @McRae2014; @Hannon2018], and so if genetic effects are driving associations, either through confounding or with DNA methylation as a mediator, one would expect heritable sites to be commonly identified in EWAS. Variance is also heterogenous across sites [@Garg2018]. Technical effects are more likely to influence DNA methylation variation at sites for which measured variation is low. Thus, some studies have advocated removing these sites to prevent reporting  generating false positives and to reduce the multiple testing burden [@Meng2010; @Logue2017]. However, it is unclear how variance in DNA methylation relates to the magnitude of effect estimates. Experimental studies have shown DNA methylation changes at different locations of the genome correlate with different regulatory functions. For example, an increase in DNA methylation at transcriptional start sites is correlated with a decrease in gene expression [@Jones2012; @Ando2019; @Deaton2011], but an increase in DNA methylation within a gene body shows the opposite association [@Wolf1984; @Hellman2007]. Thus, genomic location of DNA methylation sites is likely to influence their likelihood of association with a trait.

Understanding underlying reasons that drive EWAS results is essential for future study design. This may come in the form of proper consideration of potential biasing factors, or by selecting certain DNA methylation sites based on their specific characteristics. Further, understanding the characteristics of DNA methylation-trait associations can inform the design of future technologies aimed at measuring DNA methylation for EWAS. 

Also, by examining the commonalities of EWAS results, one has the potential to uncover links between traits that have not previously been made or to identify new potential mediating factors between traits.

In this study we first describe the data present in the EWAS Catalog before exploring various explanations for the findings.

\newpage

## Methods {#methods-04}

### Epigenome-wide association studies data 
All the data for the analysis were extracted from The EWAS Catalog (__Chapter \@ref(ewas-catalog)__). This includes 178 published studies, 387 EWAS from the ARIES subsection of ALSPAC (__Section \@ref(alspac-03)__) [@Relton2015-aries; @Fraser2013; @Boyd2013] and 40 EWAS performed using data from the gene expression omnibus (GEO) resource. See __Chapter \@ref(ewas-catalog)__ for more details.

### Description of catalog data {-#description-of-data}
Associations between DNA methylation and traits, unless otherwise stated, were extracted at P < 1x10^-7^. Each of the CpGs in the Catalog are annotated to genes, using data from the meffil R package . 

T-statistics ($t$) were calculated using P-values, sample sizes ($n$) and the qt() function in R. $r^2$ values were calculated from t-statistics as follows

\begin{equation}
    r^2 = \frac{t^2} {t^2 + n - 1}
    (\#eq:r-squared)
\end{equation}

We identified traits for which r^2^ values might be inflated. For each EWAS the estimated r^2^ values were summed and these values were transformed to approximate a normal distribution. Then a z-test was performed to assess which sum of r^2^ values were greater than the mean sum of r^2^ values. From the z-test, those with a FDR-corrected P-value of less than 0.05 were labelled as having inflated r^2^ values.

### Identifying faulty probes
By far the most common method to measure DNA methylation across the studies in The EWAS Catalog is using the Illumina Infinium HumanMethylation450 Beadchip. Since its development, the array has been extensively characterised [@Price2018; @Forest2018; @Jaffe2014; @Zhou2017] and it was found that not all probes map just to the CpG they were designed to bind to. Some probes map to SNPs, others are non-specific and some are prone to cross-hybridisation. We assigned probes to be 'potentially faulty' if they were characterised as such by Zhou et al. [@Zhou2017]. 

### Replication
An association was deemed to be replicated at P < 1x10^-4^. We assessed replicability of EWAS within the database in two separate ways. Firstly, replication within studies is recorded in the EWAS Catalog, thus we simply performed a lookup for any studies that performed a replication or meta-analysed discovery and replication datasets. Secondly, we performed a lookup of results for any traits for which multiple EWAS had been conducted. 

The Catalog also contains results from studies that have uploaded their data to GEO as well as results from the re-analysis of that data performed by The EWAS Catalog team. These re-analyses adjusted for 20 surrogate variables only as many studies did not provide a complete set of covariates to GEO. We performed a lookup of results found in the original EWAS in the re-analysed data. 

### Selecting data to assess DNA methylation characteristics
We decided to only use studies and results thought to be more "robust" when assessing how characteristics of DNA methylation might impact EWAS results. To this end, we removed all potentially faulty probes and probes that mapped to sex chromomsomes, excluded studies with likely inflated r^2^ values, and removed studies for which re-analysis of the data replicated less than 10% of the findings.

### DNA methylation characteristics
The association between heritability, variability and average level of DNA methylation at each CpG site and EWAS effect size was assessed. To allow this across traits, we standardised beta coefficients, $\beta_{standard}$, like so, 

\begin{equation}
    \beta_{standard} = \frac{\beta\sigma(x)} {\sigma(y)}
    (\#eq:standardised-beta-coeffs)
\end{equation}

As individual data were not available to us, the variance in DNA methylation sites was approximated by the variance in DNA methylation at sites as supplied by the Genetics of DNA Methylation Consortium (GoDMC) [@Min2020] and the trait variance was estimated by rearranging the equation \@ref(eq:r-squared-from-beta) depending on whether DNA methylation was the independent ($x$) or dependent ($y$) variable in the model.

\begin{equation}
	r^2 = \frac{\beta^2\sigma^2(x)} {\sigma^2(y)}
	(\#eq:r-squared-from-beta)
\end{equation}

GoDMC [@Min2020] also provided the mean levels of DNA methylation at each site. Heritability of DNA methylation at each site has been previously estimated by McRae et al. 2014 [@McRae2014] and Van Dongen et al. 2016 [@VanDongen2016], these values were kindly made publically available by the authors of those studies and were used in this study. 

Associations between each characteristic and effect size were assessed using linear regression, fitting the standardised effect size as the dependent variable and the characteristic as the independent variable. The standardised effect sizes were rank normalised to ensure normality and remove the impact of outliers.

### Enrichment tests
It was assessed whether the sites identified by EWAS that were present in the catalog were enriched in any genomic region etc. This analysis was performed using LOLA... 


### Code availability {#code-availability-04}
Code used to run the analyses is available here: https://github.com/thomasbattram/something

All analyses were completed using R (version 3.6.2).

\newpage

## Results {#results-04}

### Description of the catalog {-#catalog-description}
Before assessing what might be underlying various EWAS results, we present a brief summary of the data in the EWAS Catalog (__Table \@ref(tab:study-data-tab)__). \linebreak

\begin{table}[!h]

\caption{(\#tab:study-data-tab)Description of data present in the EWAS Catalog}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{ll}
\toprule
study-trait & value\\
\midrule
\cellcolor{gray!6}{Number of EWAS} & \cellcolor{gray!6}{614}\\
Number of traits & 556\\
\cellcolor{gray!6}{Number of samples} & \cellcolor{gray!6}{389527}\\
Median sample size (range) & 536 (93 - 13474)\\
\cellcolor{gray!6}{Number of associations} & \cellcolor{gray!6}{155976}\\
\addlinespace
Number of CpGs identified & 129670\\
\cellcolor{gray!6}{Number of genes identified} & \cellcolor{gray!6}{19305}\\
Sex (\%) & Both (38.6), Females (52.0), Males (2.1)\\
\cellcolor{gray!6}{Ethnicities} & \cellcolor{gray!6}{EUR (75.3), Unclear (12.5), AFR (4.6), Other (3.6), ADM (1.6), EAS (1.4), SAS (1.0)}\\
Age (\%) & Adults (72.5), Geriatrics (11.2), Children (4.9), Infants (4.4)\\
\addlinespace
\cellcolor{gray!6}{Number of tissue types} & \cellcolor{gray!6}{42}\\
Most common tissues (\%) & whole blood (84.14), cord blood (4.34), cd4+ t-cells (2.60), placenta (1.24), saliva (0.99)\\
\bottomrule
\end{tabular}}
\end{table}

\linebreak

It may be that certain regulatory mechanisms are more important to phenotypic differences between individuals. By analysing datasets such as the EWAS Catalog, it might be possible to identify which regions may be more important and further, it could be used to identify novel mediating factors between traits.

The number of traits each CpG associated with was fairly even across chromosomes (__Figure \@ref(fig:traits-manhattan)__). There were five CpGs that associated with more than ten traits, cg01940273 _-_, cg05575921 _AHRR_, cg00574958 _CPT1A_, cg17901584 _DHCR24_, cg06500161 _ABCG1_. cg06500161 _ABCG1_ associated with more traits than any other site - 71 traits. These correspond mostly to metabolites, weight-related traits, and type two diabetes. 

(ref:traits-manhattan-cap) __Number of unique traits associated with DNA methylation at each CpG__. Sites associated with more than 10 unique traits are highlighted in orange and labelled.

(ref:traits-manhattan-scap) Number of unique traits associated with DNA methylation at each CpG

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/04-properties_of_ewas/traits_per_dmp_at_1e-07} 

}

\caption[(ref:traits-manhattan-scap)]{(ref:traits-manhattan-cap)}(\#fig:traits-manhattan)
\end{figure}

Next we estimated the variance (see equation \@ref(eq:r-squared)) captured by each association to gauge the level of covariation between complex traits and DNA methylation.

The total trait variance correlated with DNA methylation (r^2^) at each site varied from 0.0011 to 0.97 with a median of 0.093 (__Figure \@ref(fig:rsq-distribution)__). The sum of r^2^ values ranged greatly from 0.0055 to 23,879 (__Figure \@ref(fig:rsq-sum-distribution)__), with a median of 1.2. There was evidence that eight studies had a total sum of r^2^ values greater than the mean (FDR < 0.05) and r^2^ values from individual associations from these studies made up the majority of r^2^ values greater than 0.1 (__Figure \@ref(fig:rsq-distribution)__). When excluding those studies from the results, the median r^2^ value at individual sites was 0.025.

(ref:rsq-distribution-cap) __Distribution of r^2^ values across all CpG sites in The EWAS Catalog__. Each EWAS can identify multiple differentially methylated positions, each of which will capture some variance of the trait of interest for that EWAS (r^2^). $\sum {r^2}$ is the sum of r^2^ values, the distribution of which is shown in __Figure \@ref(fig:rsq-sum-distribution)__. Eight studies were identified for which there was strong evidence that the sum of r^2^ values were greater than the mean across all studies. All of the differentially methylated positions identified by those studies are highlighted in blue on the plot.

(ref:rsq-distribution-scap) Distribution of r^2^ values across all CpG sites in The EWAS Catalog

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{thesis_files/figure-latex/rsq-distribution-1} 

}

\caption[(ref:rsq-distribution-scap)]{(ref:rsq-distribution-cap)}(\#fig:rsq-distribution)
\end{figure}

(ref:rsq-sum-distribution-cap) __Distribution of the sum of r^2^ values across each study in The EWAS Catalog__.

(ref:catalog-use-scap) Distribution of the sum of r^2^ values across each study in The EWAS Catalog

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{thesis_files/figure-latex/rsq-sum-distribution-1} 

}

\caption[(ref:catalog-use-scap)]{(ref:rsq-sum-distribution-cap)}(\#fig:rsq-sum-distribution)
\end{figure}

These results suggest that some associations within the database are likely to be inflated, yet for most traits, variation at individual DNA methylation sites captures little trait variance. Summing the r^2^ values indicates a substantial proportion of trait variance can be captured by multiple DNA methylation sites for some traits, but this can only be estimated by jointly modelling the contribution of all sites to trait variance. This is explored in __Chapter \@ref(h2ewas-chapter)__. Here, the sum of r^2^ values is used to indicate whether the results of a study are likely inflated and thus unlikely to be robust. 

### Robustness of results {#robustness-of-results}

Here we continue to explore the robustness of results to 1. identify potential improvements that could be made for future studies and 2. identify potentially erroneous associations to exclude from downstream analyses.

In at least one model, 579 studies adjusted for batch effects, 518 studies adjusted for cell composition, and 489 adjusted for both. Of all DMPs identifed, 9.3% were measured by potentially faulty probes and an extra 0.64% were present on sex chromosomes (__Figure \@ref(fig:faulty-probes-plot)__). 

(ref:faulty-probes-cap) __The percentage of differentially methylated positions that may have been identified by faulty probes and the percentage of EWAS that reported identifying at least one of these probes__. Some CpGs are both on a sex chromosome and were identified as faulty by Zhou et al. They were labelled as 'potentially faulty'.

(ref:faulty-probes-scap) The percentage of differentially methylated positions that may have been identified by faulty probes and the percentage of EWAS that reported identifying at least one of these probes

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{thesis_files/figure-latex/faulty-probes-plot-1} 

}

\caption[(ref:faulty-probes-scap)]{(ref:faulty-probes-cap)}(\#fig:faulty-probes-plot)
\end{figure}

There were 30 studies that performed a meta-analysis of discovery and replication samples. A further 48 studies performed a separate replication analysis. Together, this provides 1666 associations within the EWAS Catalog that have been replicated at P < 1x10^-4^. 

From the studies that put their data on GEO, we re-analysed the association between DNA methylation and the phenotype of interest from the original study, including 20 surrogate variables as covariates. Both the original study results and the results from the re-analysis of the phenotype of interest are in The EWAS Catalog database for 10 studies. Across the studies, between 0% and 96.875% of DMPs were replicated at P < 1x10^-4^ (__Table \@ref(tab:geo-reanalysis-tab)__). \linebreak

\begin{table}[!h]

\caption{(\#tab:geo-reanalysis-tab)GEO re-analysis replication}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llll}
\toprule
Trait & N-DMPs & N-replicated & Percent-replicated\\
\midrule
\cellcolor{gray!6}{Age at menarche} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.00}\\
Arsenic exposure & 11 & 0 & 0.00\\
\cellcolor{gray!6}{Arsenic exposure} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.00}\\
Fetal alcohol spectrum disorder & 19 & 1 & 5.26\\
\cellcolor{gray!6}{Inflammatory bowel disease} & \cellcolor{gray!6}{14} & \cellcolor{gray!6}{13} & \cellcolor{gray!6}{92.86}\\
\addlinespace
Nevus count & 1 & 0 & 0.00\\
\cellcolor{gray!6}{Psoriasis} & \cellcolor{gray!6}{16} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.00}\\
Rheumatoid arthritis & 47,875 & 116 & 0.24\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{30} & \cellcolor{gray!6}{12} & \cellcolor{gray!6}{40.00}\\
Smoking & 32 & 31 & 96.88\\
\bottomrule
\end{tabular}}
\end{table}

\linebreak

Using the Catalog data we further performed replication analyses. There were 62 studies that shared a common phenotype of interest. Replication rate, judged as the percentage of CpGs also present in any other study of the same trait with P value < 1x10^-4^, varied from 0 to 100 between studies (__Table \@ref(tab:replication-tab)__). \linebreak

\begin{table}

\caption{(\#tab:replication-tab)Replication rate}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lllll}
\toprule
trait & n-cpgs & rep-cpgs & n-rep-studies & prop-rep\\
\midrule
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{23} & \cellcolor{gray!6}{6} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.26087}\\
Smoking & 15 & 1 & 19 & 0.06667\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{17} & \cellcolor{gray!6}{14} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.82353}\\
Rheumatoid arthritis & 51,476 & 8 & 1 & 0.00016\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{972} & \cellcolor{gray!6}{766} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.78807}\\
\addlinespace
Smoking & 25 & 5 & 19 & 0.20000\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{29} & \cellcolor{gray!6}{25} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.86207}\\
Smoking & 30 & 9 & 19 & 0.30000\\
\cellcolor{gray!6}{Birth weight} & \cellcolor{gray!6}{15} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{0.00000}\\
Body mass index & 3 & 3 & 8 & 1.00000\\
\addlinespace
\cellcolor{gray!6}{Depression} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.00000}\\
Smoking & 1 & 1 & 19 & 1.00000\\
\cellcolor{gray!6}{Maternal smoking during pregnancy} & \cellcolor{gray!6}{185} & \cellcolor{gray!6}{7} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.03784}\\
Schizophrenia & 1 & 0 & 2 & 0.00000\\
\cellcolor{gray!6}{Alzheimers disease Braak stage} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1.00000}\\
\addlinespace
Alzheimers disease Braak stage & 100 & 2 & 1 & 0.02000\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{37} & \cellcolor{gray!6}{35} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.94595}\\
Maternal smoking in pregnancy & 25 & 10 & 2 & 0.40000\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{53} & \cellcolor{gray!6}{48} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.90566}\\
Birth weight & 1 & 0 & 4 & \vphantom{1}0.00000\\
\addlinespace
\cellcolor{gray!6}{Maternal smoking in pregnancy} & \cellcolor{gray!6}{22} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.86364}\\
Smoking & 461 & 415 & 19 & 0.90022\\
\cellcolor{gray!6}{High-density lipoprotein cholesterol} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1.00000}\\
Smoking & 3 & 3 & 19 & 1.00000\\
\cellcolor{gray!6}{Body mass index} & \cellcolor{gray!6}{76} & \cellcolor{gray!6}{30} & \cellcolor{gray!6}{8} & \cellcolor{gray!6}{0.39474}\\
\addlinespace
Type II diabetes & 7 & 1 & 2 & 0.14286\\
\cellcolor{gray!6}{Body mass index} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{8} & \cellcolor{gray!6}{1.00000}\\
Body mass index & 9 & 5 & 8 & 0.55556\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{14} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.73684}\\
Type II diabetes & 39 & 1 & 2 & 0.02564\\
\addlinespace
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{6} & \cellcolor{gray!6}{6} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{1.00000}\\
Birth weight & 1 & 0 & 4 & 0.00000\\
\cellcolor{gray!6}{Type II diabetes} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{1.00000}\\
Smoking & 316 & 201 & 19 & 0.63608\\
\cellcolor{gray!6}{Arsenic exposure} & \cellcolor{gray!6}{200} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.00500}\\
\addlinespace
Smoking & 66 & 66 & 19 & 1.00000\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{748} & \cellcolor{gray!6}{544} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.72727}\\
Maternal smoking in pregnancy & 2,187 & 24 & 2 & 0.01097\\
\cellcolor{gray!6}{Schizophrenia} & \cellcolor{gray!6}{94} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.01064}\\
Smoking & 100 & 3 & 19 & 0.03000\\
\addlinespace
\cellcolor{gray!6}{Maternal smoking during pregnancy} & \cellcolor{gray!6}{25} & \cellcolor{gray!6}{7} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.28000}\\
Body mass index & 3 & 1 & 8 & 0.33333\\
\cellcolor{gray!6}{Schizophrenia} & \cellcolor{gray!6}{1,223} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.00082}\\
Smoking & 9,159 & 1,458 & 19 & 0.15919\\
\cellcolor{gray!6}{C-reactive protein} & \cellcolor{gray!6}{31} & \cellcolor{gray!6}{14} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.45161}\\
\addlinespace
Body mass index & 20 & 8 & 8 & 0.40000\\
\cellcolor{gray!6}{C-reactive protein} & \cellcolor{gray!6}{218} & \cellcolor{gray!6}{14} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.06422}\\
Body mass index & 278 & 39 & 8 & 0.14029\\
\cellcolor{gray!6}{Birth weight} & \cellcolor{gray!6}{6} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{0.00000}\\
Body mass index & 2 & 2 & 8 & 1.00000\\
\addlinespace
\cellcolor{gray!6}{Serum high-density lipoprotein cholesterol} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.21053}\\
High-density lipoprotein cholesterol & 3 & 1 & 1 & 0.33333\\
\cellcolor{gray!6}{Serum high-density lipoprotein cholesterol} & \cellcolor{gray!6}{110} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.03636}\\
Birth weight & 8 & 0 & 4 & 0.00000\\
\cellcolor{gray!6}{Rheumatoid arthritis} & \cellcolor{gray!6}{64} & \cellcolor{gray!6}{8} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.12500}\\
\addlinespace
Depression & 5 & 0 & 2 & 0.00000\\
\cellcolor{gray!6}{Smoking} & \cellcolor{gray!6}{525} & \cellcolor{gray!6}{424} & \cellcolor{gray!6}{19} & \cellcolor{gray!6}{0.80762}\\
Arsenic exposure & 371 & 1 & 1 & 0.00270\\
\cellcolor{gray!6}{Depression} & \cellcolor{gray!6}{39} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.00000}\\
Alzheimer's disease & 656 & 3 & 1 & 0.00457\\
\addlinespace
\cellcolor{gray!6}{Alzheimer's disease} & \cellcolor{gray!6}{350} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{0.00857}\\
Body mass index & 71 & 8 & 8 & 0.11268\\
\bottomrule
\end{tabular}}
\end{table}

\linebreak

Before continuing to assess what CpG characteristics might, in part, explain some associations found in EWAS, we removed sites that were identified by a potentially faulty probes and were on either of the sex chromosomes. Further, we removed the eight studies that had an inflated sum of r^2^ values and studies for which fewer than 10% of sites identified in the original analyses were identified in a re-analysis using the data provided via GEO. Overall, this left 789 EWAS and 77127 associations (at P < 1x10^-4^).


<!-- Smoking is associated with large changes in DNA methylation across the genome (REF) and is associated with many different traits (REF). Thus, it may confound DNA methylation associations found in the catalog. If this was the case, one might expect smoking related CpGs to appear more in the catalog than expected by chance. The DMPs identified by EWAS of traits other than smoking were enriched for smoking related CpG sites (P = X).
 -->
<!-- ### Correlation across tissues {-#correlation-across-tissues}

* There is correlation between DNA methylation sites across tissues, suggesting stability in DNAm, but would we expect to find associations at these positions across tissues?

* Replication of sites across tissues for same traits? 
* Do sites that are highly correlated across tissues appear more than expected by chance in whole blood EWAS? 
  + If yes then suggests the correlation might be due to decreased measurement error at those sites
  + If the opposite (correlated sites appear less than expected by chance), then it suggests that correlation occurs at positions that don't really matter (i.e. are just stable because of things like being at housekeeping genes)
* Can check housekeeping gene theory if needed
 -->

### CpG characteristics {#cpg-characteristics}

Using the selected EWAS results, we investigated whether the characteristics of DNA methylation at CpG sites explained associations found in EWAS. 

It has previously been suggested that sites at which DNA methylation variability is low should be removed [@Meng2010; @Logue2017]. The rationale being if total variation is low then the ratio of variation due to technical effects to variation due to biological effects will be greater and thus any association with a complex trait is more likely to be due to technical artefacts. However, selection would dictate that phenotypes (including DNA methylation) that have a large effect would be selected for (if they had a positive impact on fitness) or against (if they had a negative impact on fitness) [@Frank2011; @Gilad2006]. Therefore, it would be expected that DNA methylation at sites that have large impacts on cellular function would end up stabilising over time, and so the largest effects may be missed by removing CpG sites with low variances.

There was strong evidence of an inverse association between variance at a CpG site and effect size (P = 1e-99, __Table \@ref(tab:cpg-chars-tab)__), suggesting that removal of sites with little variation may reduce the chances of discovering changes in DNA methylation that have larger effects.

DNA methylation is a binary measurement, a CpG site can either be methylated or not. However, when measuring methylation across multiple DNA molecules, the proportion of those molecules methylated at a given site will be between 0 and 1. If DNA methylation at a given site is important for specific regulatory functions within a group of cells, one might expect that site to be methylated (or unmethylated) in the majority of the cells. Thus, changes in methylation away from an extreme, might have more of impact on cellular function.

There was strong evidence of an association between mean DNA methylation levels and negative effect sizes (P = 5.1e-86, __Table \@ref(tab:cpg-chars-tab)__) and an inverse association between mean methylation levels and positive effect sizes (P = 1e-99, __Table \@ref(tab:cpg-chars-tab)__).

DNA methylation changes are heritable [@McRae2014; @VanDongen2016], and DNA methylation could mediate the effects of genotype on complex traits or genotype might confound the association between DNA methylation and complex traits.  

There was evidence that effect sizes tended to be greater in more heritable sites (P = 5.9e-05, __Table \@ref(tab:cpg-chars-tab)__). 

The combined variance in effect size estimates explained by DNA methylation variability and heritability was 0.084 (__Table \@ref(tab:cpg-chars-tab)__). \linebreak

\begin{table}[!h]

\caption{(\#tab:cpg-chars-tab)Association between CpG chars and associations in EWAS}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lllll}
\toprule
characteristic & beta & r2 & p & auc\\
\midrule
\cellcolor{gray!6}{avg-meth (beta>0)} & \cellcolor{gray!6}{-6.7e-01} & \cellcolor{gray!6}{0.08377} & \cellcolor{gray!6}{1.0e-99} & \cellcolor{gray!6}{NA}\\
avg-meth (beta<0) & 4.3e-01 & 0.09138 & 5.1e-86 & NA\\
\cellcolor{gray!6}{variance} & \cellcolor{gray!6}{-1.2e+03} & \cellcolor{gray!6}{0.01806} & \cellcolor{gray!6}{1.0e-99} & \cellcolor{gray!6}{0.62}\\
h2 & 8.1e-02 & 0.00037 & 5.9e-05 & 0.78\\
\cellcolor{gray!6}{variance + h2} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{0.08395} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{0.78}\\
\bottomrule
\end{tabular}}
\end{table}

\linebreak

The position of DNA methylation relative to genes is pertinent to its association with gene expression (__Section \@ref(dna-methylation)__) [@Jones2012; @Ando2019; @Deaton2011; @Wolf1984; @Hellman2007].

* results for enrichment analyses here

\newpage

## Discussion {#discussion-04}

Understanding the nature of EWAS associations is imperative for biological inference. Using data from the EWAS Catalog we show that many CpGs associate with multiple different unique traits and the magnitude of these associations are partly explained by the characteristics of DNA methylation levels. False positives may also explain a proportion of EWAS associations. Roughly 10% of the differentially methylated positions identified were measured by potentially faulty probes and the median percentage of CpGs that could be replicated across studies was 24%.

### Identifying mediators {#identifying-mediators}

Identifying modifiable molecular traits that mediate the effect of complex traits on disease is something that motivates a substantial portion of molecular epidemiology research [@Relton2010; @Relton2012]. Having a database of associations between DNA methylation and various traits and diseases may enable easy identification of potential mediators that warrant follow-up. Overall, DNA methylation at 126,673 CpGs are associated with multiple traits. The CpG that was identified in the most EWAS, cg06500161 _ABCG1_, had evidence from multiple studies that methylation at that site associated with weight-related traits such as body mass index [@Mendelson2017; @Wahl2017; @Shah2015; @Demerath2015] and waist circumference [@Demerath2015], roughly 60 metabolites [@Hedman2017; @Sayols-Baixeras2016; @Braun2017; @Kriebel2016; @Pfeiffer2015] and with type 2 diabetes [@Chambers2015]. Some studies have explored these associations further, for example, two studies used Mendelian randomization (MR) to provide evidence that body mass index caused changes in methylation at this site [@Mendelson2017; @Wahl2017]. However, full characterisation and assessment of whether methylation at that site mediates the effect of adverse adiposity on any diseases has not been undertaken and could be followed-up. 

### Biased results {#biased-results}

The potential biases in EWAS have been well documented [@Birney2016] and were discussed at length in __Section \@ref(problems-for-ewas)__. It is encouraging that the majority of studies include batch effects and cell composition in at least one of their models (79.1262136%). However, there are still some studies including probes that have been characterised as faulty.

Differences in cell composition, sample ethnicity, covariates used and other differential biases between studies might explain the low replication rate. However, studies only tend to report associations below the conventional EWAS P-value threshold, P < 1e-7, so differences in study power could also be a major factor.

### Understanding CpG charactersitcs {#understanding-cpg-characteristics}

Characteristics of DNA methylation discovered in experimental studies, such as its association with gene expression, were used to select sites to measure DNA methylation [@Illumina2012]. Further, studies have suggested selecting from those sites commonly measured, CpGs that have certain characteristics such as high variance [@Meng2010; @Logue2017]. 

Our results suggest removing CpG sites with low variances may make it more likely to remove sites with greater effects. Variance had a modest ability to predict whether or not a CpG site was likely to be identified in an EWAS, and it did not add to the predictive ability of heritability, despite explaining a higher proportion of variance in effect estimates. This may be explained by two things. Firstly, having a lower variance in the independent or dependent variable increases the standard error of the beta coefficient in a linear regression. Secondly, heritability will in part determine variance of DNA methylation. 

* Enrichment stuff here

### Limitations {#limitations}

Individual level data were not available and thus to calculate standardised betas, the variance of the trait had to be estimated from external measures of DNA methylation. If the GoDMC sample is not representative of the sample used for the study EWAS then these estimates may be substantially biased. Further, many studies do not report the effect estimates from their statistical analyses. If there is a marked difference in the studies that do not report effect sizes and those that do, then any associations between standardised effect estimates and DNA methylation site characteristics are likely to be biased.

## Conclusion {#conclusion-04}
This chapter demonstrates the potential for using large-scale EWAS databases to understand DNA methylation-trait associations. It was found that study design flaws can help explain some associations. However, it is noteworthy that the vast majority of studies have accounted for some potential biasing factors, for example 79.1262136% of studies adjusted for batch effects and cell composition. Further, there was an invese association between DNA methylation variability and effect size, suggesting that studies that remove variable sites prior to analysis could be excluding important regions from the analysis. Finally, cg06500161 _ABCG1_ was identified as being associated with 71 traits that share known biological relationships. This highlights the potential to use The EWAS Catalog to identify molecular markers that might underlie the relationship between traits.


<!--chapter:end:04-properties_of_ewas.Rmd-->

# Exploring the variance in complex traits captured by DNA methylation assays {#h2ewas-chapter}







## Abstract {#abstract-05}
Following several years of epigenome-wide association studies (EWAS), traits analysed to date tend to yield few associations. Reinforcing this observation, EWAS on 400 traits were conducted and only 16 of the traits yielded at least one association at a conservative significance threshold. To begin investigating why EWAS yield is low, the proportion of phenotypic variation captured by 421,693 blood derived DNA methylation markers (h^2^~EWAS~) across all 400 traits was formally estimated. The mean h^2^~EWAS~ was zero, with evidence for regular cigarette smoking exhibiting the largest association with all markers (h^2^~EWAS~ = 0.42) and the only one surpassing a false discovery rate < 0.1. Though underpowered to determine the h^2^~EWAS~ value for any one trait, h^2^~EWAS~ was predictive of the number of EWAS hits across the traits analysed (AUC=0.7). Modelling the contributions of the methylome on a per-site versus a per-region basis gave varied h^2^~EWAS~ estimates (r=0.47) but neither approach obtained substantially higher model fits across all traits. Our analysis indicates that most complex traits do not heavily associate with the markers commonly measured in EWAS within blood. However, it is likely DNA methylation does capture variation in some traits and h^2^~EWAS~ may be a reasonable way to prioritise these traits that are likely to yield associations in EWAS.

## Introduction {#introduction-05}
Epigenome-wide association studies (EWAS) aim to assess the association between phenotypes of interest and DNA methylation across hundreds of thousands of CpG sites throughout the genome [@Birney2016; @Rakyan2011]. As seen in __Chapter \@ref(properties-of-ewas)__, many recent EWAS yielded few sites across the genome with strong evidence for association. The proportion of total trait variance associated with each of these sites tended to be small (__Figure \@ref(fig:rsq-distribution)__), but when modelled together, may be large. There is a need to have a global view of the contribution of DNA methylation to complex traits in order to interpret these results.

There are multiple possible reasons for there being few EWAS signals. Firstly, DNA methylation varies between cells and tissues, thus any changes related to a trait may occur in any number of tissues. Currently, because of ease of access and cost, the most common tissue used for EWAS is blood, which may not capture changes in DNA methylation related to the trait of interest [@Birney2016; @Rakyan2011]. Secondly, the commonly used technologies probe a small percentage of the total number of potentially methylated sites. In the absence of full knowledge of the correlation structure across methylation site variation, it is therefore difficult to fully understand coverage in current measures. Two more possibilities are that DNA methylation variation is actually not associated with the traits studied or that the associations are many but individually too small to detect with current sample sizes (Box 1).

Interpretation of the paucity of EWAS hits is difficult because there is no knowledge of the total contribution of methylation variation to the trait. However, analogous to the calculation of genetic heritability estimates, which have now been expanded to make inference across non-familial population-level data (SNP heritability), the total contribution of methylation markers to complex traits can potentially be estimated. This could give insight into the underlying patterns of association between DNA methylation markers and complex traits (See Box 2 for a simple explanation of SNP heritability (or h^2^~SNP~) and its application to DNA methylation).

SNP heritability estimates are sensitive to assumptions of the underlying genetic architecture and there are different ways in which to model the contribution of each SNP to the overall genetic component. The original model of calculating h^2^~SNP~ introduced by Yang et al. assumes that each variant has an effect that is independent of the regional linkage disequilibrium (LD) structure as each variant is unweighted (the blanket model), and this effectively assumes regions of high LD contribute more to phenotypic variance [@Yang2010]. Speed et al. proposed a new model, which considered the LD between SNPs so that each region of high LD can effectively be counted as a singular effect (the grouping model) [@Speed2012]. Finding which models fit the data better helps ensure a more accurate estimation of the proportion of DNA methylation association with a trait, further contrasting these models could also be biologically informative.

Gene regions are methylated in a coordinated fashion, which is associated with changes in gene expression [@Jones2009; @Jones2012], with a tendency for promotor regions to be unmethylated and gene body regions to be methylated when gene expression is activated [@Jones2012]. This, amongst other complex patterns of gene regulation, induces a correlation structure within EWAS data, and it is not clear whether a single site is driving an association and neighbouring sites are consequentially correlated, or if the cumulative contributions of all neighbouring sites associate with the regulatory process. In EWAS, a common strategy is to collapse DNA methylation sites into groups based on proximity and if they share the same direction of association and potentially magnitude of association, this is often called differentially methylated region (DMR) analysis [@Chen2016]. This, however, does not explain whether the sites within groups are acting independently and cumulatively or as a set of distinct influences. __Figure \@ref(fig:h2ewas-model-comp)__ shows a representation of how the differences in models apply to DNA methylation data at a single small region using in one specific example. Of course, there are far more scenarios possible and furthermore, the models aren’t restricted to a single small region in the genome. They apply to all sites, as do the DMR methods used in EWAS. Thus, by applying both methods to DNA methylation data across multiple phenotypes and comparing their utility insight can be gained into how DNA methylation operates across gene regions. Furthermore, it is important to find the model that best fits the data to help prevent biased estimates.

This chapter aims to estimate h^2^~EWAS~ values across a plethora of traits and assesses whether this estimate may be useful in identifying traits for which EWAS will likely yield successful identification of associated DNA methylation sites. To do this I perform hundreds of EWAS studies and evaluate if h^2^~EWAS~ estimates are predictive of the number of sites identified by the EWAS at various P value thresholds. I also compare the performance of different models underlying h^2^~EWAS~ estimates to infer likely methylation architecture of complex traits.

***
**Box 1**

The need for larger sample sizes in GWAS has been empirically demonstrated across a broad range of traits. For height and body mass index (BMI), the number of associations dramatically increased from 12 to 3290 and from one to 941, respectively after increasing sample sizes by ~670,000 [@Lettre2008; @Frayling2007; @Yengo2018]. This trend can be seen for many traits. Similar to early GWAS, many EWAS are discovering few sites strongly associated with complex traits. However, an example that suggests promise for increasing sample sizes for EWAS is seen with BMI, where an EWAS of 459 individuals identified just five sites, but increasing the sample size to over 5,000 led to identification of 278 sites [@Dick2014; @Wahl2017]. While we can continue to improve sample sizes in EWAS, there is a need to determine the upper limit of the information we can obtain from EWAS of complex traits like BMI. Furthermore, the BMI EWAS example may be unrepresentative of other traits, so having a corollary test for estimating h^2^~SNP~ for DNA methylation would help us understand if we’re capturing relevant information from the current arrays we are using in EWAS. Such information could inform future study designs in terms of growing sample sizes with the current assays available versus designing new assays.

***

***
**Box 2**

Methods used to estimate h^2^~SNP~ use restricted maximum likelihood (REML) tests to estimate the proportion of variance attributable to these genetic variants. Essentially this assesses whether individuals that are genetically similar are more likely to be phenotypically similar. If those individuals that have a high genetic overlap tend to correlate strongly phenotypically compared to those that don’t have high genetic overlap, then the phenotype of interest will have a high h^2^~SNP~. Unlike genetic variants, DNA methylation is responsive to the environment [@Birney2016] and determining causal directionality between DNA methylation markers associated with traits is not trivial [@Relton2010; @Tahara2015; @Kandimalla2013]. Therefore, estimating the proportion of trait variation captured by DNA methylation variation (which will henceforth be denoted as h^2^~EWAS~) using the same techniques will ascertain effects going in both directions as well as associations due to confounding. The combination of these mechanisms may increase power to detect trait-DNA methylation association, and could be the reason that so many DNA methylation markers are found in small EWAS compared to similarly sized GWAS [@Wahl2017].

***

(ref:h2ewas-model-comp-cap) __Comparison of the grouping and blanket models in the context of the relationship between DNA methylation and gene expression__. Both regions are exactly the same, the only difference is how each model assumes the methylation sites should be treated. The grouping model down-weights the contribution of correlated CpGs, effectively grouping them, and the blanket model assumes each CpG independently associates with a trait. As seen here, the grouping of correlated CpG sites may not be the correct thing to do as some of the sites may be acting independently of their correlated partners).

(ref:h2ewas-model-comp-scap) Comparison of the grouping and blanket models in the context of the relationship between DNA methylation and gene expression

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/m2_model_comparison} 

}

\caption[(ref:h2ewas-model-comp-scap)]{(ref:h2ewas-model-comp-cap)}(\#fig:h2ewas-model-comp)
\end{figure}

## Method {#method-05}

### Study samples {#study-samples-05}

All data for the chapter came from the Avon Longitudinal Study of Parents and Children (ALSPAC) cohort (see __Section \@ref(alspac-03)__ for study details). This chapter uses phenotypic and DNA methylation data from the 940 mothers. Not all individuals had data on the various covariates used in the analyses, thus the sample size varied with each analysis (mean of 805 and range of 491 to 940).

Continuous and binary phenotypes measured in mothers were extracted from the cohort using the ‘alspac’ R package (github.com/explodecomputer/alspac) and went through extensive quality control. Originally over 15,000 traits that were related to the mothers were extracted from the database. After the quality control process, which is detailed in __Figure \@ref(fig:h2ewas-pheno-qc)__, there were 2408 traits left for analysis.

(ref:h2ewas-pheno-qc-cap) __A summary of the data cleaning steps__. Binary variables with fewer than 100 cases or controls were removed. Variables with "no clear relevance" to the mothers were identified manually, most were descriptive of how samples were measured, for example the fieldworker that examined the mother several months or years after blood draw. Normality of traits after rank normal transformations were assessed using a Shapiro-Wilk test. Those with some evidence of non-normality (P < 0.05), were re-examined by eye and removed if thought to be non-normal.

(ref:h2ewas-pheno-qc-scap) A summary of the data cleaning steps

\begin{figure}

{\centering \includegraphics[width=0.75\linewidth,height=0.75\textheight]{figure/05-h2ewas/m2_data_cleaning} 

}

\caption[(ref:h2ewas-pheno-qc-scap)]{(ref:h2ewas-pheno-qc-cap)}(\#fig:h2ewas-pheno-qc)
\end{figure}

All continuous traits were rank-normalised for further analyses. A Shapiro-Wilk test of normality was performed on these rank-normalised traits and for those with some evidence of non-normality (P < 0.05), the distribution of those traits was re-examined by eye to ensure it was approximately normal. It was found that any non-normality of phenotype distributions corresponded to an inflation of zero values. These traits were removed and overall there were 2408 traits left for analyses. These traits do not necessarily represent independent phenotypes and as such I wanted to prevent correlated traits skewing results. The absolute Pearson’s correlation coefficient between each trait was subtracted from one (1 –[r]). Then traits were greedily selected where 1 –[r] < 0.4 with any other trait. This left 400 traits, which consisted of ~30% clinically measured variables (including roughly 50 metabolites and some anthropometric traits), ~25% health related questions (for example “have you ever had asthma?”), ~40% behavioural and social traits (for example educational attainment variables, use of pesticide, and having pets), and ~5% of traits were related to the partner or child of the participant (for example the employment status of the partner). Phenotypes are presented in Supplementary table 1. Plots showing the correlation between all the phenotypes as well as with just the selected traits can be seen in __Figure \@ref(fig:h2ewas-pheno-corr-all) and \@ref(fig:h2ewas-pheno-corr-subset)__.

(ref:h2ewas-pheno-corr-all-cap) __Correlation between all 2408 phenotypes__.

(ref:h2ewas-pheno-corr-all-scap) Correlation between all 2408 phenotypes

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/test_correlation_plot_all} 

}

\caption[(ref:h2ewas-pheno-corr-all-scap)]{(ref:h2ewas-pheno-corr-all-cap)}(\#fig:h2ewas-pheno-corr-all)
\end{figure}

(ref:h2ewas-pheno-corr-subset-cap) __Correlation between the 400 traits with a correlation of 1 - [r] < 0.4__.

(ref:h2ewas-pheno-corr-subset-scap) Correlation between the 400 traits with a correlation of 1 - [r] < 0.4

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/test_correlation_plot} 

}

\caption[(ref:h2ewas-pheno-corr-subset-scap)]{(ref:h2ewas-pheno-corr-subset-cap)}(\#fig:h2ewas-pheno-corr-subset)
\end{figure}

### DNA methylation data {#dna-methylation-data-05}
DNA methylation was measured using the Illumina Infinium HumanMethylation450 (HM450) BeadChip. Before use, the data went through quality control and were normalised separately to the phenotype data. Full details can be found in the Supplementary Material.

DNA methylation data generated from blood collected at a single clinic visit was used for each of the participants.

Probes were excluded if they were present on either of the sex chromosomes, a SNP/control probe, had a detection p value < 0.05 across over 10% of samples or were identified as problematic by Zhou et al. [@Zhou2017]. This left 421,693 CpG sites for analyses.

Before analysis a linear regression model was fitted with beta values for methylation (which ranges from 0 (no cytosines methylated) to 1 (all cytosines methylated)) as the outcome against batch variables (plate ID in ALSPAC) modelled as a random effect to help remove the effects of batch in the subsequent analyses.

Cell proportions (CD8+ and CD4+ T cells, B cells, monocytes, natural killer cells, and granulocytes) were estimated using an algorithm proposed by Houseman et al. [@Houseman2012].

### REML analysis {#reml-analysis}
Using LDAK [@Speed2017] the relationship between the methylomes (as measured by the HM450 BeadChip) of 940 individuals was estimated by producing a DNA methylation relationship matrix (MRM). This matrix was used as input for the REML analysis to estimate the proportion of a trait’s variation that was explained by DNA methylation (h^2^~EWAS~). Age, the top 10 ancestry principal components, and derived cell proportions were added as covariates to the model.

When producing the MRM, probes were scaled by their observed variance and the weighting of each probe was based on the variance of DNA methylation at that site using the formula below:

\begin{equation}
	f_{j}(1-f_{j})^{(\alpha/2)}
	(\#eq:mrm-weights)
\end{equation}

where $f_j(1-f_j)$ is the variance of methylation at CpG $j$. The higher the alpha value the more weight is given to probes with greater variance; an alpha value of -1 gives equal weight to probes with low and high variance. The alpha value of -0.25 was chosen because previous analysis by Speed et al. [@Speed2017] suggested that this value was optimal for measuring h^2^~SNP~. Furthermore, it was hypothesised that probes with a greater variance would contribute more to trait variance. As the method was applied to DNA methylation data in this chapter, sensitivity analyses were conducted. MRMs were created specifying the alpha value at increasing increments of 0.25 from -2 to 0. The association between h^2^~EWAS~ and number of EWAS hits.

The mean of the MRM diagonal should be 1 and the variance close to 0, as the diagonal values essentially represent the correlation between an individual’s methylome with itself. Although values are expected to vary slightly from 1. For the MRMs it was identified that some diagonal elements were very high (> 2), which caused the diagonal to have a high variance (0.13). To assess whether these values could skew results, sensitivity analyses were conducted, removing individuals with varying diagonal value cutoffs.

Like h^2^~SNP~ estimates, h^2^~EWAS~ estimates should range from zero to one. If a trait has a true h^2^~EWAS~ value of zero, there is no association between the methylome and that trait, and if h^2^~EWAS~ equals one then DNA methylation has the capacity to completely predict that trait. However, estimation of h^2^~EWAS~ can be fairly imprecise and without constraining the software it’s possible to get estimates of h^2^~EWAS~ that are outside 0-1 due to large standard errors. These point estimates have to be erroneous by definition.

Even though the grouping model effectively groups sites together, it is actually likely to increase the number of parameters because without the weightings imposed by this model, the blanket model essentially ignores sites that are not neighbouring others. Therefore, larger standard errors are expected with the grouping model. The grouping model applies a sliding window approach, with windows of 100kb, to capture the correlation between neighbouring sites and weight sites according to the correlation structure of the region. When applying the grouping model, the number of sites that were weighted were 45,863 (out of 421,693) and the number of sites neighbouring any single CpG site ranged from 29 to 28,217.

### Generating genetic principal components {#generating-genetic-principal-components}

Ancestry principal components were generated within ALSPAC mothers using PLINK (v1.9). Before analysis, genetic data went through quality control and were imputed, full details can be found in the Supplementary Material. After quality control and imputation, independent SNPs (r^2^ < 0.01) were used to calculate the top 10 ancestry principal components.

### Epigenome-wide association studies {#methods-ewas-05}

EWAS were conducted for 400 selected traits (see __Section \@ref(study-samples-05)__ for selection process) within the ALSPAC cohort. For all traits, linear regression models were fitted with beta values of DNA methylation as the outcome and the phenotype as the exposure. Covariates included age, the top 10 ancestry principal components and cell proportions.

### Association between h^2^~EWAS~ and epigenome-wide association studies results {#methods-h2ewas-dmp}

DMPs were extracted from the EWAS at P value thresholds ranging from 10^-3^ to 10^-7^. It was assessed whether h^2^~EWAS~ could predict that the number of identified DMPs in an EWAS was greater than number of DMPs expected to be identified at a given P threshold defined as the number of sites tested multiplied by the threshold. The traits were also “pruned” in the same way as described above, to prevent including overly correlated traits and biasing results. The sensitivity and specificity of this prediction was calculated and a receiver operating characteristic (ROC) curve was plotted. At p-value thresholds of 10^-6.5^ and 10^-7^ there were than 100 traits for which EWAS identified any sites, so these thresholds were removed from the analysis.

The association between the number of DMPs identified at P < 1x10^-5^ and h^2^~EWAS~ values was assessed using a negative binomial hurdle model with the number of DMPs identified fitted as the outcome and h^2^~EWAS~ as the exposure. The negative binomial hurdle Poisson regression model results are twofold. The first of which assesses whether there is an association between the binary trait of whether a DMP was identified by EWAS (dependent variable) and h^2^~EWAS~ (independent variable). The second is a zero-truncated model, i.e. the zero values are removed from the model and the association between number of DMPs (dependent variable) and h^2^~EWAS~ (independent variable) is assessed.

The same method was applied to estimate the association between the number of SNPs identified in GWAS at P < 5x10^-8^ and h^2^~SNP~. SNPs associated with 485 traits in UK Biobank (see Supplementary Methods for sample information and phenotype selection) were extracted using the IEU Open GWAS Database [@Hemani2018]. The h^2^~SNP~ estimates were extracted from http://www.nealelab.is/uk-biobank/.

All analyses were conducted in R (version 3.3.3) or using the command line software LDAK [@Speed2017], GCTA [@Yang2011], and PLINK [@Chang2015]. For the EWAS analyses, the meffil R package was used [@Min2018]. A one-sided P value was used to assess if the h^2^~EWAS~ for a trait was > 0, and two-sided P values were used for everything else.

### Data availability {#data-availability-05}
Code used to perform analyses can be found here: github.com/thomasbattram/ereml

The full EWAS summary statistics of each of the 400 EWAS are available via Zenodo here

## Results {#results-05}
A flowchart showing our study design and giving a summary of the results is shown in __Figure \@ref(fig:h2ewas-study-design)__.

(ref:h2ewas-study-design-cap) __Study design with a summary of the results__. ALSPAC = Avon Longitudinal Study of Parents and Children, QC = quality control, EWAS = epigenome-wide association study, MRM = methylation relationship matrix, AUC = area under curve.

(ref:h2ewas-study-design-scap) Study design with a summary of the results

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/m2_workflow} 

}

\caption[(ref:h2ewas-study-design-scap)]{(ref:h2ewas-study-design-cap)}(\#fig:h2ewas-study-design)
\end{figure}

### Estimating the proportion of phenotypic variance associated with DNA methylation {#estimating-h2ewas}

Two models were used to estimate the total contribution of all DNA methylation sites to the variation (h^2^~EWAS~) for each of 400 traits within up to 940 individuals. The mean for both models was zero with ranges of -0.4 to 0.4 and -0.5 to 0.4 for the blanket and grouping models respectively __Figure \@ref(fig:h2ewas-estimates)__. The estimates were imprecise, the mean standard error was 0.03 and 0.05 for the blanket and grouping models respectively. The trait with the greatest evidence for h^2^~EWAS~ estimates being above zero was having smoked cigarettes regularly (FDR-corrected P = 0.06 and 0.10 for the blanket and grouping models respectively). The correlation between the h^2^~EWAS~ estimates of the two models was 0.47 and there was evidence that on average the estimates of the grouping model were higher (Paired t-test P = 1.8x10^-5^, __Figure \@ref(fig:h2ewas-estimates)__), and the mean difference between estimates was 0.018.

There was little evidence that either of the models fit the data better (had higher likelihoods) across the 400 traits tested (difference in median likelihoods = 0.19, Wilcoxon’s paired ranked sum test P = 0.73). Further, the majority of h^2^~EWAS~ estimate differences between the traits were small.

(ref:h2ewas-estimates-cap) __A comparison of h^2^~EWAS~ estimates given by applying REML using the blanket and grouping models across 400 traits__. The blue dashed line is at x=y. Values with h^2^~EWAS~ lower than 0 are due to imprecision in h^2^~EWAS~ estimates as the true estimate cannot be negative. Smoked_cigs_reg = smoked cigarettes regularly. The h^2^~EWAS~ of this phenotype has the greatest evidence for being above 0 for both the blanket and grouping model (Uncorrected P = 1.44x10^-4^ and P = 2.61x10^-4^, respectively).

(ref:h2ewas-estimates-scap) A comparison of h^2^~EWAS~ estimates given by applying REML using the blanket and grouping models across 400 traits

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/model_m2_comparison} 

}

\caption[(ref:h2ewas-estimates-scap)]{(ref:h2ewas-estimates-cap)}(\#fig:h2ewas-estimates)
\end{figure}

### Sensitivity analyses when estimating the proportion of phenotypic variance associated with DNA methylation {#results-sensitivity-analyses-05}

After examination of the MRMs required to produce the h^2^~EWAS~ estimates, for both the blanket and grouping model some unexpected values were observed. Ninety-six diagonal elements had values over 1.5 when using the blanket model, with the maximum value being 3.562. When assessing the impact of these potential outliers in the MRM to results it was found that the median and range of h^2^~EWAS~ estimates varied little (__Figure \@ref(fig:h2ewas-sens)__). The likelihood of the models tended to be greater as more outliers were removed (lower threshold for classing a diagonal element as an outlier), but it still did not vary greatly (__Figure \@ref(fig:h2ewas-sens)__).

The weight of predictors used to produce the MRMs was also examined. As more weight was given to sites where methylation variation was greater (increasing alpha value) the h^2^~EWAS~ estimates were slightly higher (__Figure \@ref(fig:h2ewas-sens)__). However, the likelihood varied little, the median likelihood had a range of 2 across the alpha values (__Figure \@ref(fig:h2ewas-sens)__).

(ref:h2ewas-sens-cap) __Boxplots summarising of sensitivity analyses__. __A__ and __B__ Analyses estimating h^2^~EWAS~ were repeated after removing individuals who had high diagnonal values in the methylation relationship matrix (MRM). Varying thresholds were used to define individuals as an outlier, NA indicates that no individuals were removed from the analysis. __A__ shows the likelihood estimate (model fit) variation and __B__ shows the variation in h^2^~EWAS~ estimates. Analyses were also repeated in the same vein, varying $\alpha$ values, (see equation \@ref(eq:mrm-weights)) (__C__ and __D__).

(ref:h2ewas-sens-scap) Boxplots summarising of sensitivity analyses

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/sens_boxplots} 

}

\caption[(ref:h2ewas-sens-scap)]{(ref:h2ewas-sens-cap)}(\#fig:h2ewas-sens)
\end{figure}

### EWAS analyses {#results-ewas-analyses-05}

In order to assess the association between h^2^~EWAS~ and EWAS results, EWAS of 400 traits were performed. No associations were found at the strict P value cutoff of P < 2.5x10^-10^ (conventional EWAS P-value threshold, 1x10^-7^, divided by the number of traits, 400). A total of 29 associations between traits and CpGs were identified at the conventional EWAS P value cutoff – P < 1x10^-7^. Of the traits tested, 16 had at least one EWAS hit, with the maximum number of CpGs associated with a trait being 13 (smoked cigarettes regularly). As there were so few traits with any identified hits, I took forward results from the lenient P value threshold of P < 1x10^-5^, at which 340 traits had at least one EWAS hit. __Table \@ref(tab:model-testing-tab)__ shows each trait and the number of differentially methylated positions identified at varying p-value thresholds.

As the distributions of hit count data was heavily right skewed with an inflation at 0 and 1 (__Figure \@ref(fig:h2ewas-dmp-dist)__), to test the association between h^2^~EWAS~ and number of DMPs I opted to test goodness of fit for variations of Poisson models. Of the 6 models tested, the negative binomial hurdle Poisson regression model fit the data best, full results can be found in Supplementary table 5. It was found there was some evidence for an association between number of EWAS hits and h^2^~EWAS~ (__Figure \@ref(fig:dmps-and-h2ewas)__). There was some evidence of association between the presence of DMPs and h^2^~EWAS~ (beta = 6.2, [95%CI 2.5, 10]) as well as some evidence of an association between number of DMPs (when the number is above 0) and h^2^~EWAS~ (mean increase of 0.63, [95%CI 0.41, 0.84] DMPs when h^2^~EWAS~ increases by 0.1). Applying the same method to GWAS data, it was found evidence that the presence of identified SNPs associated with h^2^~SNP~ (beta = 21.9 [95%CI 19.6, 24.1]) and the association between number of SNPs identified (when the number is above 0) and h^2^~SNP~ (mean increase of 1.5, [95%CI 0.93, 2.5] SNPs when h^2^~SNP~ increases by 0.1).

(ref:h2ewas-dmp-dist-cap) __The distribution of the number of DNA methylation sites identified at P<1x10^-5^ across EWAS of 400 traits__.

(ref:h2ewas-dmp-dist-scap) The distribution of the number of DNA methylation sites identified at P<1x10^-5^ across EWAS of 400 traits

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/FOM_hit_count_distribution} 

}

\caption[(ref:h2ewas-dmp-dist-scap)]{(ref:h2ewas-dmp-dist-cap)}(\#fig:h2ewas-dmp-dist)
\end{figure}

(ref:dmps-and-h2ewas-cap) __Association between h^2^~EWAS~ and number of DMPs identified in EWAS__. The correlation between DNA methylation and the variance of traits (h^2^~EWAS~) was calculated using REML analysis using the blanket and grouping models. EWAS were conducted on all the same traits and the distribution of the number of DMPs identified at P < 1x10^-5^ and h^2^~EWAS~ are plotted above. Any traits where the h^2^~EWAS~ estimate is below 0 are coloured grey. The true h^2^~EWAS~ value of a trait cannot be negative, but sample sizes in this analysis are small so the estimates are imprecise.

(ref:dmps-and-h2ewas-scap) Association between h^2^~EWAS~ and number of DMPs identified in EWAS

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/m2_hit_count_scatter_p5_test} 

}

\caption[(ref:dmps-and-h2ewas-scap)]{(ref:dmps-and-h2ewas-cap)}(\#fig:dmps-and-h2ewas)
\end{figure}

\begin{table}[!h]

\caption{(\#tab:model-testing-tab)Summary of how well models fit to test the association between $h^2_{EWAS}$ and the number of differentially methylated positions identified across 400 traits at P < 1x10$^{-5}$.}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lrr}
\toprule
Model & Log(likelihood) & DF\\
\midrule
\cellcolor{gray!6}{Poisson} & \cellcolor{gray!6}{-1561} & \cellcolor{gray!6}{2}\\
Negative binomial & -972 & 3\\
\cellcolor{gray!6}{Hurdle-negative binomial} & \cellcolor{gray!6}{-954} & \cellcolor{gray!6}{5}\\
Hurdle & -1500 & 4\\
\cellcolor{gray!6}{Zero-inflated negative binomial} & \cellcolor{gray!6}{-972} & \cellcolor{gray!6}{5}\\
\addlinespace
Zero-inflated Poisson & -1501 & 4\\
\bottomrule
\multicolumn{3}{l}{\textsuperscript{} DF = degrees of freedom.}\\
\end{tabular}}
\end{table}

The ability of h^2^~EWAS~ estimated by both models to predict whether the number of DMPs identified was greater than expected was assessed at varying P value thresholds. ROC curves were produced and the area under the curve (AUC) ranged from 0.65 and 0.67 at P < 1x10^-6^ to 0.79 and 0.71 at P < 1x10^-3^ for the blanket and grouping models respectively and the predictive ability remained fairly stable as the threshold increased (__Figure \@ref(fig:h2ewas-dmp-roc-curve)__).

(ref:h2ewas-dmp-roc-curve-cap) __The ability of h^2^~EWAS~ values to predict whether the number of differentially methylated positions identified in an EWAS is higher than expected by chance__. ROC curves for h^2^~EWAS~ values predicting number of DMPs at differing P value thresholds. AUC = area under the curve.

(ref:h2ewas-dmp-roc-curve-scap) The ability of h^2^~EWAS~ values to predict whether the number of differentially methylated positions identified in an EWAS is higher than expected by chance

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/05-h2ewas/roc_plot} 

}

\caption[(ref:h2ewas-dmp-roc-curve-scap)]{(ref:h2ewas-dmp-roc-curve-cap)}(\#fig:h2ewas-dmp-roc-curve)
\end{figure}

## Discussion {#discussion-05}

The global contribution of DNA methylation to complex trait variance can inform researchers of how to design future studies that seek to discover new DNA methylation sites associated with their trait of interest. In this chapter I apply methods designed to estimate the predictive capacity of variants across a SNP-chip (h^2^~SNP~), to DNA methylation data measured in blood with the HM450 BeadChip across 400 independent traits, giving a distribution of the contribution of all sites typically measured in EWAS to complex trait variance. Although sample size was too small to reliably estimate h^2^~EWAS~ for any one trait, the distribution of estimates suggest little complex trait variation is captured by DNA methylation at the sites measured and h^2^~EWAS~ may be a good measure to identify traits for which EWAS will yield associations. 

### Estimation of h^2^~EWAS~ {#estimation-of-h2ewas}

The true h^2^~EWAS~ of a trait gives the total predictive capacity of DNA methylation for that trait, which is equivalent to the proportion of that trait’s total variance that is associated with changes in DNA methylation. Knowing this information can help design future EWAS studies. A low value of h^2^~EWAS~ doesn’t necessarily mean there is little correlation between DNA methylation and a trait, it could transpire that unmeasured sites contribute more to the association. It is important to remember that roughly 1.5% of CpG sites are targeted by the HM450 BeadChip and DNA can be methylated elsewhere (not at cytosine bases). Therefore, whole genome bisulphite sequencing, or a similar technique, may show that the variance of complex traits captured by DNA methylation is far higher. Furthermore, even if h^2^~EWAS~ is low and the sites discovered already do not explain all of the h^2^~EWAS~ estimate, there may still be value in increasing sample size to identify more DMPs as well as increase the precision of h^2^~EWAS~ estimates. DMPs discovered may not be highly correlated with a trait, but this doesn’t mean the potential biological information gained isn’t valuable. For example, if a change in a the levels of protein X has a large effect on a trait and change in DNA methylation has a small effect on the levels of protein X, then the effect of that DNA methylation change on the trait will be small, but identifying that DMP could lead to discovering the importance of the protein. Another thing to consider is that DNA methylation is tissue and cell specific. This means, that h^2^~EWAS~ may vary a lot depending on what tissue the methylation is measured in.

The true underlying genetic architecture of complex traits is still unknown, and therefore it is difficult to know the appropriate model to choose when estimating the contribution of all measured SNPs to phenotypic variance amongst unrelated individuals and arguments for each model depending on this underlying genetic architecture are still being put forward [@Speed2017], [@Gazal2017; @Speed2018; @Speed2020], thus the attempts made in this study to re-purpose genomic REML are likely to suffer the same flaws that are trying to be overcome in genetic data. With this in mind, in addition to the imprecise estimates of h^2^~EWAS~ presented here (due to the small sample sizes of available data), we believe that individual trait h^2^~EWAS~ values should be treated with caution. This doesn’t exclude the possibility that estimating h^2^~EWAS~ may be useful and other methods are already being developed to measure the association between DNA methylation at all sites and complex traits [@TrejoBanos2020].

### Future EWAS {#future-ewas-05}

Heritability estimates from family-based studies gave an _a priori_ justification for the pursuit of gene mapping endeavours that eventually gave rise to GWAS, as they demonstrated variation in complex traits had a substantial genetic component. However, the evidence DNA methylation contributed to trait variation was not ascertained before EWAS were first conducted. To justify collecting more samples and continuing with EWAS research in the current vein, methods such as the one presented in this study should be used to show DNA methylation does substantially contribute to trait variance.

It has become clear from the GWAS era of genetics, that for complex traits, such as coronary artery disease, many common genetic variants with small effects make up the genetic component of the trait [@VanderHarst2018; @Visscher2017]. This suggests a large number of molecular pathways contribute to these traits. DNA methylation at CpGs is heritable [@VanDongen2016; @Gaunt2016], thus it would be expected that the DNA methylation architecture of a trait will somewhat reflect the genetic architecture of the trait, although this has not been empirically tested.

Despite uncertainty of h^2^~EWAS~ estimates for individual traits, I show h^2^~EWAS~ has a modest ability to predict whether the number of EWAS hits will be greater than expected by chance at a given P value threshold. This predictive ability remained stable as the P value threshold for detection increased from P < 1x10^-6^ to P < 1x10^-3^. These results suggest that increasing sample sizes for traits which truly associate with DNA methylation should result in the discovery of more DMPs. Furthermore, these results support a model for which small changes in methylation at many CpGs across the genome are related to complex traits.

### Contributions of individual CpG sites {#contribution-of-individual-cpg-sites}

The original model for measuring h^2^~SNP~ assumed all genetic variants contributed the same effect on a trait [@Yang2010], Speed et al. offered an alternative model assuming a different underlying genetic architecture, whereby genetic variants in regions of high LD contributed less to the variance of a trait than more independent variants. Both groups have shown that the performance of the models depend on the alignment of the trait’s architecture with the models’ underlying assumptions. Previous literature has suggested that it is the methylation across groups of CpGs that may affect how other molecules interact with DNA and influence cellular functions such as gene expression [@Jones2012]. Furthermore, CpGs are not randomly distributed throughout the genome – many exist in close proximity within “islands” or other regions, suggesting that grouping of the CpGs may have functionality. However, the most common method used in EWAS is to treat CpG sites as independent. Here, the models proposed by Speed et al. (the grouping model) and Yang et al. (the blanket model), when estimating h^2^~EWAS~ were tested across 400 traits. The model fit the data better (had a higher likelihood) 207 times for the blanket model and 193 times for the grouping model. Thus for over half the traits treating DNA methylation sites as independent seems to be preferable and even though there is correlation between CpG sites, which allows them to be grouped, it might be that in some groups of correlated sites, individual sites within the group contribute separately to trait variance.

It’s important to note that the grouping method takes into account correlation between CpGs within 100Kb of each other. Differential methylation at CpG sites may be correlated for a variety of biological reasons, for example, CpGs lying within a transcription factor binding site will be regulated together, but also, they will be correlated with CpGs that lie in other binding sites for that same transcription factor and these may be many megabases away. This is relevant to the relationship between DNA methylation and complex traits because transcription factor regulation might be the link between complex traits and DNA methylation. Even though grouping CpG sites might yet be the best way to model the relationship between DNA methylation and complex traits, the optimum way to group sites is unknown and will likely change depending on the trait of interest.

### Limitations {#limitations-05}

The main limitation of the chapter is the small sample size (maximum N = 940) to estimate the h^2^~EWAS~. This meant the precision of our h^2^~EWAS~ estimates were very low and so our power to assess their ability to predict number of DMPs and find individual trait h^2^~EWAS~ values was low. To circumvent this problem, trends across multiple traits are assessed and I do not make strong conclusions for any one trait.

As mentioned previously the HM450 BeadChip captures a small percentage of the total DNA methylome and h^2^~EWAS~ estimates will likely vary upon assaying more DNA methylation sites. Furthermore, when measuring more sites, it might be that one of the models fits the data better. Nevertheless, the results of this study can still give evidence towards the hypothesis that differential methylation at many sites across the genome each contribute minimally to the overall association between the methylome and a complex trait.

Unlike germline genetic variants, there is intra-individual (between tissue and time dependent) DNA methylation variation [@Birney2016; @Rakyan2011]. Thus, it is to be expected that the variation of h^2^~EWAS~ estimates across traits is partly a product of the tissue and timepoint of choice. However, within the tissue biologically pertinent to the complex trait of interest, the number of pathways that associate with variation in that trait is likely to remain high, for example there are many processes affecting, or affected by, cancer development [@Hanahan2011]. Thus, it would still be expected that differential methylation at many CpG sites each associate with a trait, but the effect sizes are small. The same can be said when estimating h^2^~EWAS~ at various timepoints.

Estimates of h^2^~EWAS~ will be a product of their environment and genetic makeup of the participants it’s measured in. Therefore, the results here may vary by population and by sex. However, participants used in this study are considered to be representative of the larger ALSPAC cohort [@Relton2015], which is itself considered to be representative of a large majority of women from the UK and potentially other high-income countries [@Fraser2013]. This suggests the results will be generalisable to a large group of samples for which EWAS are conducted, but replication in these samples as well as in different populations would provide greater confidence in the generalisability of the results.

A wide range of complex traits was used in the analysis, but there are some notable absences. Rarer diseases and diseases that predominantly impact the elderly are not present in this study. The results presented here cannot be generalised to those traits.

The factors important for the correlation structure of DNA methylation data are less known than those for linkage disequilibrium structure of genetic variants. Therefore, when applying models, such as the grouping model here, that aim to account for correlation of neighbouring DNA methylation sites, some of the important structure captured may be missed for example by trans-correlations (over 1Mb). A model that estimates h^2^~EWAS~ by incorporating all of the underlying correlation of DNA methylation data may therefore outperform both models tested here.

## Conclusion {#conclusion-05}

Overall, the number of traits with good evidence for h^2^~EWAS~ > 0 was low (only smoking behaviour met the threshold of FDR < 0.1) and mean h^2^~EWAS~ value across both models was roughly 0, suggesting that for many traits DNA methylation variation as measured on the HM450 BeadChip in blood is of little relevance. However, these estimates varied greatly and therefore DNA methylation measured in this way will likely have relevance for some traits, for example smoking cigarettes regularly. Further, these estimates were correlated with the number of DMPs identified, suggesting that for traits whose variance associates with DNA methylation then increasing sample size will yield an increase in the number of CpGs identified in EWAS. I also provide evidence that there is value in assessing individual CpG-trait associations as opposed to groups of correlated CpG sites within 100Kb. However, this does not preclude the possibility that a more complex model of CpG site correlation may provide a better fit.





<!--chapter:end:05-h2ewas.Rmd-->

# EWAS-GWAS comparison {#ewas-gwas-comp-chapter}

<!--chapter:end:06-ewas_gwas_comparison.Rmd-->

# Appraising the causal relevance of DNA methylation for risk of lung cancer {#dnam-lung-cancer-mr}










## Abstract {#abstract-07}

### Background {#abstract-background-07}
DNA methylation changes in peripheral blood have recently been identified in relation to lung cancer risk. Some of these changes have been suggested to mediate part of the effect of smoking on lung cancer. However, limitations with conventional mediation analyses mean that the causal nature of these methylation changes has yet to be fully elucidated.

### Methods {#abstract-methods-07}
I first performed a meta-analysis of four epigenome-wide association studies (EWAS) of lung cancer (918 cases, 918 controls). Next, I conducted a two-sample Mendelian randomization (MR) analysis, using genetic instruments for methylation at CpG sites identified in the EWAS meta-analysis, and 29,863 cases and 55,586 controls from the TRICL-ILCCO lung cancer consortium, to appraise the possible causal role of methylation at these sites on lung cancer.

### Results {#abstract-results-07}
16 CpG sites were identified from the EWAS meta-analysis (FDR < 0.05), 14 of which had suitable genetic instruments. MR provided little evidence that DNA methylation in peripheral blood at the 14 CpG sites play a causal role in lung cancer development (FDR > 0.05), including for cg05575921-_AHRR_ where methylation is strongly associated with both smoke exposure and lung cancer risk.

### Conclusions {#abstract-conclusions-07}
The results contrast with previous observational and mediation analysis, which have made strong claims regarding the causal role of DNA methylation. Thus, previous suggestions of a mediating role of methylation at sites identified in peripheral blood, such as cg05575921-_AHRR_, could be unfounded. However, this study does not preclude the possibility that differential DNA methylation at other sites is causally involved in lung cancer development, especially within lung tissue.

## Introduction {#introduction-07}
Lung cancer is the most common cause of cancer-related death worldwide [@Ferlay2013]. Several DNA methylation changes have been recently identified in relation to lung cancer risk [@Fasanelli2015; @Baglietto2017; @McCarthy2016]. Given the plasticity of epigenetic markers, any DNA methylation changes that are causally linked to lung cancer are potentially appealing targets for intervention [@Strathdee2002; @Jones2002]. However, these epigenetic markers are sensitive to reverse causation, being affected by cancer processes [@Jones2002], and are also prone to confounding, for example by socio-economic and lifestyle factors [@Borghol2012; @Elliott2014].

One CpG site, cg05575921 within the aryl hydrocarbon receptor repressor (_AHRR_) gene, has been consistently replicated in relation to both smoking [@Joehanes2016] and lung cancer [@Fasanelli2015; @Baglietto2017; @Bojesen2017] and functional evidence suggests that this region could be causally involved in lung cancer [@Zudaire2008]. However, the observed association between methylation and lung cancer might simply reflect separate effects of smoking on lung cancer and DNA methylation, i.e. the association may be a result of confounding [@Richmond2016], including residual confounding after adjustment for self-reported smoking behaviour [@Fewell2007; @Munafo2012].  Furthermore, recent epigenome-wide association studies (EWAS) for lung cancer have revealed additional CpG sites which may be causally implicated in development of the disease [@Fasanelli2015; @Baglietto2017]. 

Mendelian randomization (MR) uses genetic variants associated with modifiable factors as instruments to infer causality between the modifiable factor and outcome, overcoming most unmeasured or residual confounding and reverse causation [@DaveySmith2014; @DaveySmith2003]. In order to infer causality, three core assumptions of MR should be met: 1) The instrument is associated with the exposure, 2) The instrument is not associated with any confounders, 3) The instrument is associated with the outcome only through the exposure. MR may be adapted to the setting of DNA methylation [@Relton2012; @Relton2015; @Richardson2017] with the use of single nucleotide polymorphisms (SNPs) that correlate with methylation of CpG sites, known as methylation quantitative trait loci (mQTLs) [@Gaunt2016].

In this study, I performed a meta-analysis of four lung cancer EWAS (918 case-control pairs) from prospective cohort studies to identify CpG sites associated with lung cancer risk and applied MR to investigate whether the observed DNA methylation changes at these sites are causally linked to lung cancer.

In this chapter, Dr Rebecca Richmond performed analysis in the CCHS cohort (see __Sections \@ref(ahrr-one-sample-mr-methods) and \@ref(ahrr-one-sample-mr)__) and contributed to writing the introduction and discussion. Dr Andrew E. Teschendorff analysed differences in lung tumour and adjacent healthy tissue (see __Sections \@ref(lc-heathly-v-normal-methods) and \@ref(lc-heathly-v-normal)__). I completed the rest of the analyses and wrote each section, except those for which Dr Rebecca Richmond completed the analyses.

## Methods {#methods-07}

### EWAS study details
A meta-analysis of four lung cancer case-control EWAS was conducted to identify DNA methlyation sites associated with lung cancer. DNA methylation in each EWAS was assessed using the Illumina Infinium® HumanMethylation450 BeadChip. All EWAS are nested within prospective cohorts that measured DNA methylation in peripheral blood samples before diagnosis: EPIC-Italy (185 case-control pairs), Melbourne Collaborative Cohort Study (MCCS) (367 case-control pairs), Norwegian Women and Cancer (NOWAC) (132 case-control pairs) and the Northern Sweden Health and Disease Study (NSHDS) (234 case-control pairs). Study populations, laboratory methods, data pre-processing and quality control methods have been described in detail elsewhere [@Baglietto2017] and are outlined below.

At the various laboratory sites, samples were distributed into 96-well plates and processed in chips of 12 arrays (8 chips per plate) with case-control pairs arranged randomly on the same chip. Methylation data were pre-processed and normalized in each study, and probe filtering was performed as previously described [@Baglietto2017], leaving 465,886 CpGs suitable for the analysis in EPIC-Italy, 485,330 CpGs in MCCS, 450,890 CpGs in NOWAC and 482,867 CpGs in NSHDS.

#### European Prospective Investigation into Cancer and Nutrition-Italy (EPIC-Italy)
EPIC-Italy includes 47,749 volunteers (32,579 women) aged 35–70 years at the time of recruitment (1992–1998). Anthropometric measurements and lifestyle variables including detailed information on smoking history were collected at recruitment through standardized questionnaires, together with a blood sample. Within EPIC-Italy a nested case-control study was conducted utilizing incident cases diagnosed within follow-up and healthy controls individually matched to cases by gender, date of birth (±5 years), date of inclusion in the study and study centre. Analysis was performed for 185 incident cases diagnosed within follow-up and matched controls. Laboratory procedures were carried out at the Human Genetics Foundation (Turin, Italy) and DNA extracted from buffy coats as previously described [@Baglietto2017]. All participants signed an informed consent form, and the ethical review boards of the International Agency for Research on Cancer and of each local participating centre approved the study protocol.

#### Melbourne Collaborative Cohort Study (MCCS)
The MCCS is a prospective cohort study of 41,514 volunteers (24,469 women) aged between 27 and 76 years at baseline (1990-1994). At baseline attendance, participants completed questionnaires that measured demographic characteristics and lifestyle factors. Height and weight were directly measured, and a blood sample was collected and stored. Incident cases of lung cancer were identified through linkage with the State and National Cancer Registries during follow-up up to the end of 2011. The MCCS sample included 367 cases and 367 matched controls selected from MCCS participants who were lung cancer free at the age of diagnosis of the matching case (density sampling). Matching variables included gender, date of blood collection (within 6 months), date of birth (within 1 year), country of birth (Australia and UK versus Southern Europe), type of biospecimen (lymphocyte, buffy coat and dried blood spot) and smoking status (never smokers; short-term former smokers: quitting smoking less than 10 years before blood draw; long-term former smokers: quitting smoking 10 years or more before blood draw; current light smokers: less than 15 cigarettes per day at blood draw; and current heavy smokers: 15 cigarettes or more at blood draw). For the MCCS, laboratory procedures were carried out at the Genetic Epidemiology Laboratory, the University of Melbourne according to manufacturers' protocols. DNA extraction from lymphocytes and buffy coats was performed as previously described [@Baglietto2017]. The Cancer Council Victoria's Human Research Ethics Committee approved the study protocol. Subjects gave written consent to participate and for the investigators to obtain access to their medical records.

#### Norwegian Women and Cancer (NOWAC)
The biobank of the NOWAC cohort was established in the years 2003-2006. Those who filled in an eight-page questionnaire and accepted the invitation to donate blood were sent blood drawing equipment together with a two-page epidemiological questionnaire. Around 50 000 women returned two tubes of blood to the Institute of Community Medicine at UiT The Arctic University of Norway and data linkage to the National Cancer Registry of Norway was performed. During follow-up to the end of 2011, 132 eligible cases of lung cancer were identified and were used for the EWAS. For each case, one control with an available blood sample was selected and matched on time since blood sampling and year of birth in order to control for effects of storage time and ageing. The cases and the controls were processed together for all laboratory procedures in order to reduce any batch effect. Laboratory procedures were carried out at the Human Genetics Foundation (Turin, Italy). DNA extraction from buffy coats was performed as previously described [@Baglietto2017]. All participants gave informed consent. The study was approved by the Regional Committee for Medical and Health Research Ethics in North Norway. Data storage and linkage was approved by the Norwegian Data Inspectorate.

#### Northern Sweden Health and Disease Study (NSHDS)
NSHDS is an ongoing prospective cohort and intervention study intended for health promotion of the population of Västerbotten County in northern Sweden. All residents were invited to participate by attending a health check-up at their local health care centre at 40, 50 and 60 years of age. At the health check-up, participants were asked to complete a self-administered questionnaire covering various factors such as education, smoking habits, physical activity and diet. In addition, height and weight were measured and participants were asked to donate a blood sample. Incident lung cancer cases were identified through linkage to the regional cancer registry. One control was chosen at random for each lung cancer case from appropriate risk sets consisting of all cohort members alive and free of cancer (except non-melanoma skin cancer) at the time of diagnosis of the index case. Matching criteria were the same as for the MCCS except there was no matching for type of biospecimens as DNA was extracted from whole blood for all samples. After quality control, a total of 234 incident lung cancer cases and 234 individually matched controls were available for this analysis. Laboratory procedures for NSHDS were carried out at two sites. DNA extraction from the buffy coat was conducted at Umeå University, Sweden, as previously described. Illumina Infinium HumanMethylation450 BeadChip analysis was conducted at the ALSPAC/IEU Laboratory at the University of Bristol. All study subjects provided written informed consent at time of the recruitment into the NSHDS.

### EWAS Meta-analysis {#methods-ewas-meta-analysis}
To quantify the association between the methylation level at each CpG and the risk of lung cancer conditional logistic regression models were fitted for beta values of methylation (which ranges from 0 (no cytosines methylated) to 1 (all cytosines methylated)) on lung cancer status for the four studies. The cases and controls in each study were matched, details can be found above. Surrogate variables were computed in the four studies using the SVA R package [@Leek2016] and the proportion of CD8+ and CD4+ T cells, B cells, monocytes, natural killer cells and granulocytes within whole blood were derived from DNA methylation [@Houseman2012]. The following EWAS models were included in the meta-analysis: Model 1 – unadjusted; Model 2 – adjusted for 10 surrogate variables (SVs); Model 3 – adjusted for 10 SVs and derived cell proportions. EWAS stratified by smoking status was also conducted (never (N=304), former (N=648) and current smoking (N=857)). For Model 1 and Model 2, the case-control studies not matched on smoking status (EPIC-Italy and NOWAC) were adjusted for smoking.

An inverse-variance weighted fixed effects meta-analysis was performed of the EWAS (918 case-control pairs) using the [METAL software](http://csg.sph.umich.edu/abecasis/metal/). Direction of effect, effect estimates and the I^2^ statistic were used to assess heterogeneity across the studies in addition to effect estimates across smoking strata (never, former and current). All sites identified at a false discovery rate (FDR) < 0.05 in Model 2 and 3 were also present in the sites identified in Model 1. The effect size differences between models for all sites identified in Model 1 were assessed by a Kruskal-Wallis test and a post-hoc Dunn’s test. There was little evidence for a difference (P > 0.1), so to maximize inclusion into the MR analyses sites identified in the unadjusted model (Model 1) were taken forward.

### Mendelian randomization {#methods-mendelian-randomization-07}
Two-sample MR was used to establish potential causal effect of differential methylation on lung cancer risk [@Inoue2010; @Pierce2013].

#### Sample 1: Accessible Resource for Integrated Epigenomic Studies (ARIES)
In the first sample, mQTL-methylation effect estimates ($\beta_{GP}$) for each CpG site of interest were identified in an mQTL database from the Accessible Resource for Integrated Epigenomic Studies (ARIES) (http://www.mqtldb.org). Details on the methylation pre-processing, genotyping and quality control (QC) pipelines are outlined below. 

##### DNA methylation data
Samples were drawn from the Avon Longitudinal Study of Parents and Children [@Boyd2013; @Fraser2013]. Blood from 1,018 mother–child pairs were selected for analysis as part of the Accessible Resource for Integrative Epigenomic Studies (ARIES, http://www.ariesepigenomics.org.uk/) [@Relton2015]. There are three timepoints in children and two in their mothers, the timepoints with mean ages (in brackets) in ARIES are as follows for children: birth, childhood (7.5), adolescence (17.1) and for mothers: during pregnancy (28.7), and at middle age (46.9). Following DNA extraction, samples were bisulphite converted using the Zymo EZ DNA Methylation^TM^ kit (Zymo, Irvine, CA, USA). Following conversion, genome-wide methylation was measured using the Illumina Infinium HumanMethylation450 (HM450) BeadChip. Methylation data were normalised in R with the watermelon package [@Pidsley2013] using the Touleimat and Tost [@Touleimat2012] algorithm to reduce the non-biological differences between probes. Methylation data in ARIES were rank-normalised to remove outliers, and then Matrix eQTL software [@Gaunt2016] was used to perform preliminary association analysis of SNPs with all CpG sites in the Illumina Infinium HM450 array with the exception of those failing QC, and those reported to map to more than one location (n=19,834) or to contain a genetic variant at the CpG site (n=74,182) [@Naeem2014].

__Genetic data__
Children were genotyped using the Illumina HumanHap550 quad genome-wide SNP genotyping platform (Illumina Inc., San Diego, USA) by the Wellcome Trust Sanger Institute (WTSI, Cambridge, UK) and the Laboratory Corporation of America (LCA, Burlington, NC, USA). Individuals were excluded on the basis of incorrect gender assignment; abnormal heterozygosity (<0.320 or >0.345 for WTSI data; <0.310 or >0.330 for LCA data); high missingness (>3%); cryptic relatedness (>10% identity by descent) and non-European ancestry (detected by multidimensional scaling analysis). Following QC the final directly genotyped dataset contained 500,527 SNP loci.

Mothers were genotyped using the Illumina Human660W-quad genome-wide SNP genotyping platform (Illumina Inc., San Diego, USA) at the Centre National de Génotypage (CNG, Paris, France). Individuals were excluded based on non-European ancestry, missingness, relatedness, gender mismatches and heterozygosity. PLINK (v1.07) [@Purcell2007] was used to carry out quality control measures on an initial set of 10,015 subjects and 557,124 directly genotyped SNPs. Following QC the final directly genotyped dataset contained 526,688 SNP loci.

Imputation was performed to increase the SNP density for all genotyped mothers and children combined. Genotypes were phased together using ShapeIt, and then imputed against the 1000 genomes reference panel (phase 1 version 3, phased using ShapeIt version 2, December 2013, using all populations) using Impute (version 2.2.2). Genotypes were filtered to have Hardy-Weinberg equilibrium P > 5x10^-7^, MAF > 1% and imputation info score > 0.8. Best guess genotypes were used for subsequent analysis. The final imputed dataset used for the analyses presented here contained 8,074,398 loci.

Written informed consent has been obtained from all ALSPAC participants. Ethical approval for the study was obtained from the ALSPAC Ethics and Law Committee and Local Research Ethics Committees.
Please note that the study website contains details of all the data that is available through a fully searchable data dictionary: http://www.bris.ac.uk/alspac/researchers/data-access/data-dictionary/

### Sample 2: Transdisciplinary Research in Cancer of the Lung and The International Lung Cancer Consortium
In the second sample, summary data was extracted from a GWAS meta-analysis of lung cancer risk conducted by the Transdisciplinary Research in Cancer of the Lung and The International Lung Cancer Consortium (TRICL-ILCCO) (29,863 cases, 55,586 controls) for individuals genotyped using the Illumina Infinium OncoArray-500K BeadChip (Illumina Inc. San Diego, CA) and independent samples for which prior genotyping was performed [@McKay2017]. They were used to obtain mQTL-lung cancer estimates ($\beta_{GD}$).

For each independent mQTL (r^2^ < 0.01), I calculated the log odds ratio (OR) per SD unit increase in methylation by the formula $\frac{\beta_{GD}} {\beta_{GP}}$ (Wald ratio). Standard errors were approximated by the delta method [@Thomas2007]. Where multiple independent mQTLs were available for one CpG site, these were combined in a fixed effects meta-analysis after weighting each ratio estimate by the inverse variance of their associations with the outcome. Heterogeneity in Wald ratios across mQTLs was estimated using Cochran’s Q test, which can be used to indicate horizontal pleiotropy [@Bowden2015]. Differences between the observational and MR estimates were assessed using a Z-test for difference.

If there was evidence for an mQTL-CpG site association in ARIES in at least one time-point, it was assessed whether the mQTL replicated across time points in ARIES (FDR < 0.05, same direction of effect). Further, this association was re-analysed using linear regression of methylation on each genotyped SNP available in an independent cohort (NSHDS), using rvtests [@Zhan2016]. The same NSHDS samples on which DNA methylation was measured were genotyped using the Illumina Infinium OncoArray-500k BeadChip (Illumina Inc. San Diego, CA) and quality control parameters were applied under the recently published TRICL-ILCCO GWAS study on lung cancer [@McKay2017]. Genetic imputation was performed on these samples using the Haplotype Reference Consortium (HRC) Panel (release 1) [@McCarthy2016] through the Michigan Imputation Server [@Das2016]. Replicated mQTLs were included where possible to reduce the effect of winner’s curse using effect estimates from ARIES. The instrument strength of the mQTLs were assessed by the variance explained in methylation by each mQTL (r^2^) as well as the F-statistic in ARIES __Table \@ref(tab:sup-tab1-07)__. The power to detect the observational effect estimates in the two-sample MR analysis was assessed a priori, based on an alpha of 0.05, sample size of 29,863 cases and 55,586 controls (from TRICL-ILCCO) and calculated variance explained (r^2^). \linebreak

\begin{table}[!h]

\caption{(\#tab:sup-tab1-07)Instrument strength in ARIES}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llllllll}
\toprule
SNP & CpG & Beta & SE & P & N & F & R2\\
\midrule
\cellcolor{gray!6}{rs1048691} & \cellcolor{gray!6}{cg23387569} & \cellcolor{gray!6}{0.35} & \cellcolor{gray!6}{0.053} & \cellcolor{gray!6}{3.9e-11} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{45} & \cellcolor{gray!6}{0.05}\\
rs1939110 & cg11660018 & -0.40 & 0.048 & 2.6e-16 & 834 & 70 & 0.08\\
\cellcolor{gray!6}{rs13087163} & \cellcolor{gray!6}{cg01901332} & \cellcolor{gray!6}{-0.19} & \cellcolor{gray!6}{0.035} & \cellcolor{gray!6}{5.8e-08} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{30} & \cellcolor{gray!6}{0.03}\\
rs7927381 & cg01901332 & 0.38 & 0.069 & 3.9e-08 & 834 & 31 & 0.04\\
\cellcolor{gray!6}{rs878481} & \cellcolor{gray!6}{cg05951221} & \cellcolor{gray!6}{-0.32} & \cellcolor{gray!6}{0.042} & \cellcolor{gray!6}{5.9e-14} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{58} & \cellcolor{gray!6}{0.07}\\
\addlinespace
rs1048691 & cg16823042 & 0.32 & 0.053 & 2.8e-09 & 834 & 36 & 0.04\\
\cellcolor{gray!6}{rs734568} & \cellcolor{gray!6}{cg03636183} & \cellcolor{gray!6}{0.28} & \cellcolor{gray!6}{0.043} & \cellcolor{gray!6}{6.7e-11} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{44} & \cellcolor{gray!6}{0.05}\\
rs72967500 & cg23771366 & -0.63 & 0.062 & 1.3e-22 & 834 & 102 & 0.11\\
\cellcolor{gray!6}{rs3748971} & \cellcolor{gray!6}{cg21566642} & \cellcolor{gray!6}{-0.50} & \cellcolor{gray!6}{0.080} & \cellcolor{gray!6}{5.3e-10} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{39} & \cellcolor{gray!6}{0.05}\\
rs9643220 & cg25305703 & 0.34 & 0.049 & 7.1e-12 & 834 & 48 & 0.05\\
\addlinespace
\cellcolor{gray!6}{rs77433148} & \cellcolor{gray!6}{cg08709672} & \cellcolor{gray!6}{-0.80} & \cellcolor{gray!6}{0.137} & \cellcolor{gray!6}{6.3e-09} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{34} & \cellcolor{gray!6}{0.04}\\
rs17518433 & cg09935388 & -0.33 & 0.046 & 1.8e-12 & 834 & 51 & 0.06\\
\cellcolor{gray!6}{rs463924} & \cellcolor{gray!6}{cg26963277} & \cellcolor{gray!6}{-0.39} & \cellcolor{gray!6}{0.045} & \cellcolor{gray!6}{6.8e-18} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{78} & \cellcolor{gray!6}{0.09}\\
rs56080708 & cg27241845 & 0.72 & 0.070 & 2.4e-23 & 834 & 105 & 0.11\\
\cellcolor{gray!6}{rs11744553} & \cellcolor{gray!6}{cg05575921} & \cellcolor{gray!6}{0.22} & \cellcolor{gray!6}{0.040} & \cellcolor{gray!6}{7.2e-08} & \cellcolor{gray!6}{834} & \cellcolor{gray!6}{30} & \cellcolor{gray!6}{0.03}\\
\addlinespace
rs11746538 & cg05575921 & -0.37 & 0.058 & 3.0e-10 & 834 & 41 & 0.05\\
\bottomrule
\multicolumn{8}{l}{\textsuperscript{} SE = standard error, P = P value, N = sample size, F = F statistic, R2 = Variance}\\
\multicolumn{8}{l}{explained}\\
\end{tabular}}
\end{table}

\linebreak

MR analyses were also performed to investigate the impact of methylation on lung cancer subtypes in TRICL-ILCCO: adenocarcinoma (11,245 cases, 54,619 controls), small cell carcinoma (2791 cases, 20,580 controls), and squamous cell carcinoma (7704 cases, 54,763 controls). The association in never smokers (2303 cases, 6995 controls) and ever smokers (23,848 cases, 16,605 controls) [@McKay2017] was also assessed. Differences between the smoking subgroups were assessed using a Z-test for difference.

Next the association was tested between the identified mQTLs and four smoking behaviour traits which could confound the methylation-lung cancer association: number of cigarettes per day, smoking cessation rate, smoking initiation and age of smoking initiation using GWAS data from the Tobacco and Genetics (TAG) consortium (N=74,053) [@Furberg2010].

### Supplementary analyses {#methods-supplementary-analyses-07}

#### Assessing the potential causal effect of _AHRR_ methylation: one sample MR {#ahrr-one-sample-mr-methods}
Given previous findings implicating methylation at _AHRR_ in relation to lung cancer [@Fasanelli2015; @Baglietto2017], a one-sample MR analysis [@Haycock2016] was performed of _AHRR_ methylation on lung cancer incidence using individual-level data from the Copenhagen City Heart Study (CCHS) (357 incident cases, 8401 remaining free of lung cancer). Copenhagen City Heart Study is a prospective study of the general population [@Kaur-Knudsen2011]. Copenhagen residents were invited to complete a questionnaire and undergo a physical examination and are followed through a unique person identifier in the Danish health registries. All participants gave written informed consent, and a Danish ethics committee approved the study (KF100.2039/91).

__Phenotypic data__
Participants were asked whether they smoked at the day of attendance or previously. If they answered affirmative to either of these questions, they were asked about their current and former smoking behaviour, including age of smoking initiation, age of smoking cessation, and number of daily consumed cigarettes, cheroots, cigars, and weekly grams of pipe tobacco. Based on these answers, participants were categorized as never, former, and current smokers. In addition, participants reported on alcohol consumption, occupational exposure to dust and/or welding fumes, exposure to passive smoking, education, and familial cases of lung cancer. The answers were reviewed together with an examiner at the day of attendance. Body mass index was calculated as measured weight in kilograms divided by measured height (in meters) squared.

__Methylation data__
At the physical examination, blood samples were drawn for DNA from which _AHRR_ methylation extent was measured [@Bojesen2017]. The _AHRR_ cg05575921 methylation extent was measured in duplicate samples of bisulphite treated DNA from peripheral blood from 9,234 individuals. A Taqman assay was used that was developed in the CCHS laboratory, and included standard curves, as well as internal controls in each 384-well plate. Coefficients of variation at the methylation level of 71% varied from 5.0 to 6.7%. Laboratory technicians were blinded to smoking and disease status of the individuals. Results were validated with pyrosequencing on a subset of samples.

__Genetic data__
Genotypes from the iCOGs array [@Bojesen2013] and prospective data on lung cancer incidence were also available for these participants. Of the 9234 individuals, genotype data from iCOGS on 8778 were available. In short, DNA isolated from leukocytes was genotyped with a custom Illumina iSelect genotyping array, designed to test genetic variants related to breast, ovary and prostate cancer, comprising roughly 211,000 SNPs after rigorous quality control [@Bojesen2013].

__Lung cancer data__
For lung cancer (ICD7, codes 1624 or 4624 until 1977, and ICD10, code C34 from 1978 and onwards), the date of first diagnosis was taken from the national Danish Cancer Registry from 1943 to December 2012.

__Identification of mQTLs for CCHS one-sample MR__
mQTLs located within 1Mb of cg05575921 _AHRR_ were identified in ARIES (FDR<0.05). Of those mQTLs which replicated within the CCHS, an LD pruning step was performed using a less stringent r^2^ threshold of 0.2 and generated an unweighted allele score, calculated by coding and then summing the alleles to reflect the average number of methylation-increasing alleles carried by an individual. Associations between the allele score and several potential confounding factors (sex, alcohol consumption, smoking status, occupational exposure to dust and/or welding fumes, passive smoking) were investigated. Then MR analyses were performed using two-stage Cox regression, with adjustment for age and sex, and further stratified by smoking status.

#### Tumour and adjacent normal methylation patterns {#lc-heathly-v-normal-methods}
DNA methylation data from lung cancer tissue and matched normal adjacent tissue (N=40 squamous cell carcinoma and N=29 adenocarcinoma), profiled as part of The Cancer Genome Atlas (TCGA), were used to assess tissue-specific DNA methylation changes across sites identified in the meta-analysis of EWAS, as outlined previously [@Teschendorff2015].

#### mQTL association with gene expression
Gene expression at genes annotated to CpG sites identified in the lung cancer EWAS was examined in whole blood and lung tissue using data from the Gene-Tissue Expression (GTEx) consortium [@GTExConsortium2013].

Analyses were conducted in Stata (version 14) and R (version 3.2.2). For the two-sample MR analysis the MR-Base R package TwoSampleMR [@Hemani2016] was used. An adjusted P value that limited the FDR was calculated using the Benjamini-Hochberg method [@Benjamini1995]. All statistical tests were two-sided.

## Results {#results-07}
A flowchart representing the study design along with a summary of the results at each step is displayed in __Figure \@ref(fig:fig1-07)__.

(ref:fig1-07-cap) __Study design with results summary__. ARIES = Accessible Resource for Integrated Epigenomic Studies, TRICL-ILLCO = Transdisciplinary Research in Cancer of the Lung and The International Lung Cancer Consortium, MR = Mendelian randomization, CCHS = Copenhagen City Heart Study, TCGA = The Cancer Genome Atlas. * = 2000 individuals with samples at multiple timepoints.

(ref:fig1-07-scap) Study design with results summary

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/07-dnam_lungcancer_mr/Figure_1} 

}

\caption[(ref:fig1-07-scap)]{(ref:fig1-07-cap)}(\#fig:fig1-07)
\end{figure}

### EWAS meta-analysis {#results-ewas-meta-analysis}
The basic meta-analysis adjusted for study-specific covariates identified 16 CpG sites which were hypomethylated in relation to lung cancer (FDR<0.05, Model 1, __Figure \@ref(fig:fig2-07)__). Adjusting for 10 surrogate variables (Model 2) and derived cell counts (Model 3) gave similar results (Table 1). The direction of effect at the 16 sites did not vary between studies (median I2=38.6) (__Table \@ref(tab:sup-tab2-07)__), but there was evidence for heterogeneity of effect estimates at some sites when stratifying individuals by smoking status (Table 1).

(ref:fig2-07-cap) __Observational associations of DNA methylation and lung cancer: A fixed effects meta-analysis of lung cancer EWAS weighted on the inverse variance was performed to establish the observational association between differential DNA methylation and lung cancer__. Left-hand side: Manhattan plot, all points above the solid line are at P < 1x10-7 and all points above the dashed line (and triangular points) are at FDR < 0.05. In total 16 CpG sites are associated with lung cancer (FDR < 0.05). Right-hand side: Quantile-quantile plot of the EWAS results (same data as the Manhattan plot). 

(ref:fig2-07-scap) Observational associations of DNA methylation and lung cancer: A fixed effects meta-analysis of lung cancer EWAS weighted on the inverse variance was performed to establish the observational association between differential DNA methylation and lung cancer

\begin{figure}
\includegraphics[width=0.5\linewidth]{figure/07-dnam_lungcancer_mr/Figure_2a} \includegraphics[width=0.5\linewidth]{figure/07-dnam_lungcancer_mr/Figure_2b} \caption[(ref:fig2-07-scap)]{(ref:fig2-07-cap)}(\#fig:fig2-07)
\end{figure}



\begin{landscape}\begin{table}[!h]

\caption{(\#tab:sup-tab2-07)Heterogeneity between studies and smoker groups in the meta-analysis of EWAS in four cohorts}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lllllllllllllllllllll}
\toprule
\multicolumn{3}{c}{ } & \multicolumn{3}{c}{basic} & \multicolumn{3}{c}{sv-adjusted} & \multicolumn{3}{c}{sv-and-cell-count} & \multicolumn{3}{c}{never-smokers} & \multicolumn{3}{c}{former-smokers} & \multicolumn{3}{c}{current-smokers} \\
\cmidrule(l{3pt}r{3pt}){4-6} \cmidrule(l{3pt}r{3pt}){7-9} \cmidrule(l{3pt}r{3pt}){10-12} \cmidrule(l{3pt}r{3pt}){13-15} \cmidrule(l{3pt}r{3pt}){16-18} \cmidrule(l{3pt}r{3pt}){19-21}
CpG & Gene & chr:pos & Dir & I2 & P & Dir & I2 & P & Dir & I2 & P & Dir & I2 & P & Dir & I2 & P & Dir & I2 & P\\
\midrule
\cellcolor{gray!6}{cg01901332} & \cellcolor{gray!6}{ARRB1} & \cellcolor{gray!6}{11:75031054} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.631} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{12} & \cellcolor{gray!6}{0.335} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{29} & \cellcolor{gray!6}{0.237} & \cellcolor{gray!6}{+---} & \cellcolor{gray!6}{11} & \cellcolor{gray!6}{0.337} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.970} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{18} & \cellcolor{gray!6}{0.301}\\
cg01940273 & ALPPL2 & 2:233284934 & ---- & 35 & 0.201 & ---- & 61 & 0.053 & ---- & 60 & 0.056 & +--+ & 59 & 0.064 & ---- & 7 & 0.356 & ---+ & 34 & 0.206\\
\cellcolor{gray!6}{cg03636183} & \cellcolor{gray!6}{F2RL3} & \cellcolor{gray!6}{19:17000585} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{42} & \cellcolor{gray!6}{0.159} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{76} & \cellcolor{gray!6}{0.006} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{71} & \cellcolor{gray!6}{0.015} & \cellcolor{gray!6}{+-+-} & \cellcolor{gray!6}{26} & \cellcolor{gray!6}{0.254} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{30} & \cellcolor{gray!6}{0.231} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.540}\\
cg05575921 & AHRR & 5:373378 & ---- & 47 & 0.131 & ---- & 73 & 0.012 & ---- & 70 & 0.018 & +--+ & 0 & 0.481 & ---- & 0 & 0.433 & ---- & 34 & 0.207\\
\cellcolor{gray!6}{cg05951221} & \cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{2:233284402} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{45} & \cellcolor{gray!6}{0.139} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{61} & \cellcolor{gray!6}{0.053} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{54} & \cellcolor{gray!6}{0.092} & \cellcolor{gray!6}{--++} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.862} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{33} & \cellcolor{gray!6}{0.217} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{15} & \cellcolor{gray!6}{0.315}\\
\addlinespace
cg06126421 & IER3 & 6:30720080 & ?--- & 69 & 0.041 & ---- & 67 & 0.027 & ---- & 68 & 0.024 & ?--- & 0 & 0.464 & ?--- & 11 & 0.326 & ?--- & 0 & 0.400\\
\cellcolor{gray!6}{cg08709672} & \cellcolor{gray!6}{AVPR1B} & \cellcolor{gray!6}{1:206224334} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{12} & \cellcolor{gray!6}{0.333} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{52} & \cellcolor{gray!6}{0.101} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{57} & \cellcolor{gray!6}{0.071} & \cellcolor{gray!6}{--++} & \cellcolor{gray!6}{55} & \cellcolor{gray!6}{0.085} & \cellcolor{gray!6}{---+} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.584} & \cellcolor{gray!6}{---+} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.735}\\
cg09935388 & GFI1 & 1:92947588 & ---- & 20 & 0.291 & ---- & 50 & 0.110 & ---- & 29 & 0.241 & ---+ & 0 & 0.967 & -+-- & 60 & 0.056 & ---- & 0 & 0.729\\
\cellcolor{gray!6}{cg11660018} & \cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{11:86510915} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.476} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{7} & \cellcolor{gray!6}{0.358} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.455} & \cellcolor{gray!6}{+-++} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.699} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{9} & \cellcolor{gray!6}{0.349} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.557}\\
cg16823042 & AGAP2 & 12:58119992 & ---- & 13 & 0.330 & --+- & 0 & 0.482 & --+- & 0 & 0.554 & +-+- & 19 & 0.293 & ---+ & 68 & 0.024 & ---+ & 0 & 0.919\\
\addlinespace
\cellcolor{gray!6}{cg21566642} & \cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{2:233284661} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{46} & \cellcolor{gray!6}{0.136} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{38} & \cellcolor{gray!6}{0.184} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{18} & \cellcolor{gray!6}{0.300} & \cellcolor{gray!6}{+-++} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.681} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.798} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{65} & \cellcolor{gray!6}{0.035}\\
cg23387569 & AGAP2 & 12:58120011 & ---- & 29 & 0.239 & --+- & 35 & 0.204 & --+- & 22 & 0.279 & --+- & 0 & 0.633 & ---+ & 76 & 0.005 & ---+ & 0 & 0.624\\
\cellcolor{gray!6}{cg23771366} & \cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{11:86510998} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{42} & \cellcolor{gray!6}{0.161} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{75} & \cellcolor{gray!6}{0.007} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{72} & \cellcolor{gray!6}{0.013} & \cellcolor{gray!6}{++++} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.805} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.518} & \cellcolor{gray!6}{---+} & \cellcolor{gray!6}{27} & \cellcolor{gray!6}{0.249}\\
cg25305703 & CASC21 & 8:128378218 & ---- & 53 & 0.096 & ---- & 0 & 0.461 & ---- & 4 & 0.373 & ---- & 0 & 0.780 & ---- & 28 & 0.246 & ---- & 0 & 0.793\\
\cellcolor{gray!6}{cg26963277} & \cellcolor{gray!6}{KCNQ1} & \cellcolor{gray!6}{11:2722407} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.512} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.516} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.430} & \cellcolor{gray!6}{--++} & \cellcolor{gray!6}{53} & \cellcolor{gray!6}{0.095} & \cellcolor{gray!6}{---+} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0.466} & \cellcolor{gray!6}{----} & \cellcolor{gray!6}{17} & \cellcolor{gray!6}{0.308}\\
\addlinespace
cg27241845 & ALPPL2 & 2:233250370 & ---- & 57 & 0.075 & ---- & 48 & 0.122 & ---- & 41 & 0.163 & ---+ & 0 & 0.643 & ---+ & 0 & 0.672 & ---- & 32 & 0.221\\
\bottomrule
\multicolumn{21}{l}{\textsuperscript{} Dir = Direction of effect}\\
\multicolumn{21}{l}{\textsuperscript{} I2 = Heterogeneity I-squared value}\\
\multicolumn{21}{l}{\textsuperscript{} P = P value}\\
\multicolumn{21}{l}{\textsuperscript{} chr:pos = chromosome:position}\\
\multicolumn{21}{l}{\textsuperscript{} sv-adjusted = surrogate variables included as covariates in analysis}\\
\multicolumn{21}{l}{\textsuperscript{} sv-and-cell-count = surrogate variables and derived cell counts included as covariates in analysis}\\
\multicolumn{21}{l}{\textsuperscript{} never-smokers = basic model in never smokers only}\\
\multicolumn{21}{l}{\textsuperscript{} former-smokers = basic model in former smokers only}\\
\multicolumn{21}{l}{\textsuperscript{} current-smokers = basic model in current smokers only}\\
\end{tabular}}
\end{table}
\end{landscape}


(Table 1 here)

### Mendelian randomization {#results-mendelian-randomization-07}
I identified 15 independent mQTLs (r^2^<0.01) associated with methylation at 14 of 16 CpGs. Ten mQTLs replicated at FDR<0.05 in NSHDS (__Table \@ref(tab:sup-tab3-07)__).  MR power analyses indicated >99% power to detect ORs for lung cancer of the same magnitude as those in the meta-analysis of EWAS.


\begin{landscape}\begin{table}[!h]

\caption{(\#tab:sup-tab3-07)The SNP-exposure association estimates from ARIES and NSHDS}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lllllllllllll}
\toprule
CpG & CpG chr:pos & Gene & SNP & SNP chr:pos & A1 & A2 & MAF & Beta (95\% CI) & P & NSHDS Beta (95\% CI) & NSHDS P & Trans\\
\midrule
\cellcolor{gray!6}{cg16823042} & \cellcolor{gray!6}{12:58119992} & \cellcolor{gray!6}{AGAP2} & \cellcolor{gray!6}{rs1048691} & \cellcolor{gray!6}{12:58152948} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.207} & \cellcolor{gray!6}{0.321 (0.216, 0.426)} & \cellcolor{gray!6}{2.8e-09} & \cellcolor{gray!6}{0.176 (0.031, 0.322)} & \cellcolor{gray!6}{1.8e-02} & \cellcolor{gray!6}{N}\\
cg23387569 & 12:58120011 & AGAP2 & rs1048691 & 12:58152948 & T & C & 0.208 & 0.355 (0.251, 0.458) & 3.9e-11 & 0.186 (0.04, 0.331) & 1.2e-02 & N\\
\cellcolor{gray!6}{cg05575921*} & \cellcolor{gray!6}{5:373378} & \cellcolor{gray!6}{AHRR} & \cellcolor{gray!6}{rs11746538} & \cellcolor{gray!6}{5:427466} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.121} & \cellcolor{gray!6}{-0.369 (-0.482, -0.255)} & \cellcolor{gray!6}{3.0e-10} & \cellcolor{gray!6}{-0.062 (-0.315, 0.19)} & \cellcolor{gray!6}{6.3e-01} & \cellcolor{gray!6}{N}\\
cg05575921* & 5:373378 & AHRR & rs11744553 & 5:26366 & C & G & 0.311 & 0.217 (0.139, 0.295) & 7.2e-08 & 0.085 (-0.058, 0.228) & 2.4e-01 & N\\
\cellcolor{gray!6}{cg27241845} & \cellcolor{gray!6}{2:233250370} & \cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{rs56080708} & \cellcolor{gray!6}{2:233274475} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.078} & \cellcolor{gray!6}{0.716 (0.579, 0.852)} & \cellcolor{gray!6}{2.4e-23} & \cellcolor{gray!6}{0.464 (0.244, 0.684)} & \cellcolor{gray!6}{3.6e-05} & \cellcolor{gray!6}{N}\\
\addlinespace
cg05951221 & 2:233284402 & ALPPL2 & rs878481 & 2:233285872 & G & C & 0.408 & -0.319 (-0.401, -0.237) & 5.9e-14 & -0.182 (-0.313, -0.052) & 6.0e-03 & N\\
\cellcolor{gray!6}{cg21566642*} & \cellcolor{gray!6}{2:233284661} & \cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{rs3748971} & \cellcolor{gray!6}{2:233250683} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.074} & \cellcolor{gray!6}{-0.593 (-0.743, -0.443)} & \cellcolor{gray!6}{2.7e-14} & \cellcolor{gray!6}{0.111 (-0.115, 0.338)} & \cellcolor{gray!6}{3.4e-01} & \cellcolor{gray!6}{N}\\
cg01901332* & 11:75031054 & ARRB1 & rs7927381 & 11:67346743 & T & C & 0.082 & 0.382 (0.247, 0.517) & 3.9e-08 & -0.191 (-0.4, 0.018) & 7.3e-02 & Y\\
\cellcolor{gray!6}{cg01901332*} & \cellcolor{gray!6}{11:75031054} & \cellcolor{gray!6}{ARRB1} & \cellcolor{gray!6}{rs13087163} & \cellcolor{gray!6}{3:77329538} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.390} & \cellcolor{gray!6}{-0.194 (-0.263, -0.124)} & \cellcolor{gray!6}{5.8e-08} & \cellcolor{gray!6}{0.11 (-0.019, 0.239)} & \cellcolor{gray!6}{9.4e-02} & \cellcolor{gray!6}{Y}\\
cg08709672* & 1:206224334 & AVPR1B & rs77433148 & 5:135967502 & T & A & 0.018 & -0.804 (-1.07, -0.535) & 6.3e-09 & -0.221 (-0.784, 0.342) & 4.4e-01 & Y\\
\addlinespace
\cellcolor{gray!6}{cg25305703} & \cellcolor{gray!6}{8:128378218} & \cellcolor{gray!6}{CASC21} & \cellcolor{gray!6}{rs9643220} & \cellcolor{gray!6}{8:128386926} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{G} & \cellcolor{gray!6}{0.227} & \cellcolor{gray!6}{0.343 (0.247, 0.440)} & \cellcolor{gray!6}{7.1e-12} & \cellcolor{gray!6}{0.232 (0.078, 0.385)} & \cellcolor{gray!6}{3.0e-03} & \cellcolor{gray!6}{N}\\
cg03636183 & 19:17000585 & F2RL3 & rs734568 & 19:17015685 & T & C & 0.361 & 0.284 (0.199, 0.368) & 6.7e-11 & 0.203 (0.074, 0.332) & 2.0e-03 & N\\
\cellcolor{gray!6}{cg09935388} & \cellcolor{gray!6}{1:92947588} & \cellcolor{gray!6}{GFI1} & \cellcolor{gray!6}{rs17518433} & \cellcolor{gray!6}{1:92599172} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{0.236} & \cellcolor{gray!6}{-0.330 (-0.421, -0.240)} & \cellcolor{gray!6}{1.8e-12} & \cellcolor{gray!6}{-0.186 (-0.339, -0.033)} & \cellcolor{gray!6}{1.7e-02} & \cellcolor{gray!6}{N}\\
cg26963277 & 11:2722407 & KCNQ1 & rs463924 & 11:2717680 & T & C & 0.304 & -0.394 (-0.482, -0.307) & 6.8e-18 & -0.277 (-0.41, -0.145) & 4.0e-05 & N\\
\cellcolor{gray!6}{cg11660018} & \cellcolor{gray!6}{11:86510915} & \cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{rs1939110} & \cellcolor{gray!6}{11:86515072} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.286} & \cellcolor{gray!6}{-0.404 (-0.498, -0.309)} & \cellcolor{gray!6}{2.6e-16} & \cellcolor{gray!6}{-0.229 (-0.385, -0.073)} & \cellcolor{gray!6}{4.0e-03} & \cellcolor{gray!6}{N}\\
\addlinespace
cg23771366 & 11:86510998 & PRSS23 & rs72967500 & 11:86505120 & T & C & 0.132 & -0.628 (-0.750, -0.506) & 1.3e-22 & -0.35 (-0.534, -0.166) & 1.9e-04 & N\\
\bottomrule
\multicolumn{13}{l}{\textsuperscript{} * = SNPs used as an instrumental variables were not replicated in the independent dataset (NSHDS)}\\
\multicolumn{13}{l}{\textsuperscript{} Trans = trans mQTL (Yes/No)}\\
\multicolumn{13}{l}{\textsuperscript{} chr:position = chromosome:position}\\
\multicolumn{13}{l}{\textsuperscript{} MAF = minor allele frequency}\\
\multicolumn{13}{l}{\textsuperscript{} A1 = effect allele}\\
\multicolumn{13}{l}{\textsuperscript{} P = P value}\\
\end{tabular}}
\end{table}
\end{landscape}

There was little evidence for an effect of methylation at these 14 sites on lung cancer (FDR>0.05, __Table \@ref(tab:sup-tab4-07)__). For nine of 14 CpG sites the point estimates from the MR analysis were in the same direction as in the EWAS, but of a much smaller magnitude (Z-test for difference, P<0.001) (__Figure \@ref(fig:fig3-07)__).

\begin{table}[!h]

\caption{(\#tab:sup-tab4-07)Full results for MR of DNA methylation of 14 CpG sites on lung cancer}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llllll}
\toprule
Gene & CpG & N SNP & Outcome & OR (95\% CI) & P\\
\midrule
\cellcolor{gray!6}{AGAP2} & \cellcolor{gray!6}{cg16823042} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{0.937 (0.858, 1.02)} & \cellcolor{gray!6}{0.149}\\
AGAP2 & cg23387569 & 1 & Lung cancer & 0.943 (0.871, 1.02) & 0.149\\
\cellcolor{gray!6}{AHRR} & \cellcolor{gray!6}{cg05575921*} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{0.936 (0.870, 1.01)} & \cellcolor{gray!6}{0.081}\\
ALPPL2 & cg27241845 & 1 & Lung cancer & 0.981 (0.926, 1.04) & 0.522\\
\cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{cg05951221} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{1.02 (0.949, 1.10)} & \cellcolor{gray!6}{0.558}\\
\addlinespace
ALPPL2 & cg21566642* & 1 & Lung cancer & 0.922 (0.847, 1.00) & 0.058\\
\cellcolor{gray!6}{ARRB1} & \cellcolor{gray!6}{cg01901332*} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{0.943 (0.871, 1.02)} & \cellcolor{gray!6}{0.146}\\
AVPR1B & cg08709672* & 1 & Lung cancer & 1.08 (0.954, 1.21) & 0.235\\
\cellcolor{gray!6}{CASC21} & \cellcolor{gray!6}{cg25305703} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{1.00 (0.924, 1.09)} & \cellcolor{gray!6}{0.956}\\
F2RL3 & cg03636183 & 1 & Lung cancer & 0.942 (0.864, 1.03) & 0.172\\
\addlinespace
\cellcolor{gray!6}{GFI1} & \cellcolor{gray!6}{cg09935388} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{1.03 (0.941, 1.12)} & \cellcolor{gray!6}{0.554}\\
KCNQ1 & cg26963277 & 1 & Lung cancer & 0.962 (0.903, 1.03) & 0.236\\
\cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{cg11660018} & \cellcolor{gray!6}{1} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{0.972 (0.912, 1.04)} & \cellcolor{gray!6}{0.372}\\
PRSS23 & cg23771366 & 1 & Lung cancer & 0.953 (0.901, 1.01) & 0.086\\
\bottomrule
\multicolumn{6}{l}{\textsuperscript{} N SNP = number of SNPs used in the analysis as instrumental variables}\\
\multicolumn{6}{l}{\textsuperscript{} * = Instrumental variables for that CpG site did not replicate in an independent}\\
\multicolumn{6}{l}{dataset (NSHDS)}\\
\multicolumn{6}{l}{\textsuperscript{} Where N SNP = 1, the Wald ratio estimate is used}\\
\multicolumn{6}{l}{\textsuperscript{} Where N SNP > 1, the Wald ratio estimates were meta-analyzed and the estimates}\\
\multicolumn{6}{l}{were weighted by the inverse variance of the association with the outcome}\\
\end{tabular}}
\end{table}

\pagebreak

(ref:fig3-07-cap) __Mendelian randomization (MR) vs. observational analysis__. Two-sample MR was carried out with methylation at 14/16 CpG sites identified in the EWAS meta-analysis as the exposure and lung cancer as the outcome. cg01901332 and cg05575921 had 2 instruments so the estimate was calculated using the inverse variance weighted method, for the rest the MR estimate was calculated using a Wald ratio. Only 14 of 16 sites could be instrumented using mQTLs from mqtldb.org. * = instrumental variable not replicated in independent dataset (NSHDS). The sites for which instrumental variables have not been replicated are cg01901332, cg21566642, cg05575921 and cg08709672. OR = odds ratio per SD increase in DNA methylation.

(ref:fig3-07-scap) Mendelian randomization (MR) vs. observational analysis

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/07-dnam_lungcancer_mr/Figure_3} 

}

\caption[(ref:fig3-07-scap)]{(ref:fig3-07-cap)}(\#fig:fig3-07)
\end{figure}

For 9 of out the 16 mQTL-CpG associations, there was strong replication across time points (__Table \@ref(tab:sup-tab5-07)__) and 10 out of 16 mQTL-CpG associations replicated at FDR<0.05 in an independent adult cohort (NSHDS).  Using mQTL effect estimates from NSHDS for the 10 CpG sites that replicated (FDR<0.05), findings were consistent with limited evidence for a causal effect of peripheral blood-derived DNA methylation on lung cancer (__Figure \@ref(fig:sup-fig1-07)__).


\begin{landscape}\begin{table}[!h]

\caption{(\#tab:sup-tab5-07)The association between mQTLs and their CpG sites across the five timepoints in ARIES}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llllllllllllllllll}
\toprule
\multicolumn{3}{c}{ } & \multicolumn{3}{c}{During pregnancy} & \multicolumn{3}{c}{Middle age} & \multicolumn{3}{c}{Birth} & \multicolumn{3}{c}{Childhood} & \multicolumn{3}{c}{Adolescence} \\
\cmidrule(l{3pt}r{3pt}){4-6} \cmidrule(l{3pt}r{3pt}){7-9} \cmidrule(l{3pt}r{3pt}){10-12} \cmidrule(l{3pt}r{3pt}){13-15} \cmidrule(l{3pt}r{3pt}){16-18}
CpG & Gene & SNP & Beta & SE & P & Beta & SE & P & Beta & SE & P & Beta & SE & P & Beta & SE & P\\
\midrule
\cellcolor{gray!6}{cg01901332} & \cellcolor{gray!6}{ARRB1} & \cellcolor{gray!6}{rs13087163} & \cellcolor{gray!6}{-0.007} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{4.1e-02} & \cellcolor{gray!6}{-0.004} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{2.5e-01} & \cellcolor{gray!6}{-0.003} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{1.1e-01} & \cellcolor{gray!6}{-0.003} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{1.7e-01} & \cellcolor{gray!6}{-0.015} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{2.9e-07}\\
cg01901332 & ARRB1 & rs7927381 & -0.003 & 0.006 & 5.9e-01 & -0.005 & 0.006 & 4.2e-01 & 0.015 & 0.003 & 7.9e-07 & 0.000 & 0.004 & 9.8e-01 & 0.004 & 0.005 & 4.5e-01\\
\cellcolor{gray!6}{cg03636183} & \cellcolor{gray!6}{F2RL3} & \cellcolor{gray!6}{rs734568} & \cellcolor{gray!6}{0.029} & \cellcolor{gray!6}{0.006} & \cellcolor{gray!6}{3.6e-07} & \cellcolor{gray!6}{0.027} & \cellcolor{gray!6}{0.005} & \cellcolor{gray!6}{4.7e-07} & \cellcolor{gray!6}{0.039} & \cellcolor{gray!6}{0.007} & \cellcolor{gray!6}{3.9e-08} & \cellcolor{gray!6}{0.031} & \cellcolor{gray!6}{0.005} & \cellcolor{gray!6}{2.1e-10} & \cellcolor{gray!6}{0.031} & \cellcolor{gray!6}{0.005} & \cellcolor{gray!6}{3.6e-10}\\
cg05575921 & AHRR & rs11744553 & 0.002 & 0.004 & 5.9e-01 & -0.005 & 0.004 & 2.0e-01 & 0.008 & 0.003 & 2.3e-03 & 0.009 & 0.002 & 1.3e-07 & 0.003 & 0.002 & 2.1e-01\\
\cellcolor{gray!6}{cg05575921} & \cellcolor{gray!6}{AHRR} & \cellcolor{gray!6}{rs11746538} & \cellcolor{gray!6}{-0.013} & \cellcolor{gray!6}{0.006} & \cellcolor{gray!6}{2.9e-02} & \cellcolor{gray!6}{-0.011} & \cellcolor{gray!6}{0.005} & \cellcolor{gray!6}{3.7e-02} & \cellcolor{gray!6}{-0.014} & \cellcolor{gray!6}{0.004} & \cellcolor{gray!6}{3.1e-04} & \cellcolor{gray!6}{-0.016} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{4.8e-11} & \cellcolor{gray!6}{-0.010} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{9.6e-04}\\
\addlinespace
cg05951221 & ALPPL2 & rs878481 & -0.006 & 0.001 & 1.3e-06 & -0.006 & 0.001 & 4.6e-06 & -0.001 & 0.000 & 1.6e-03 & -0.005 & 0.001 & 1.3e-08 & -0.005 & 0.001 & 1.9e-12\\
\cellcolor{gray!6}{cg08709672} & \cellcolor{gray!6}{AVPR1B} & \cellcolor{gray!6}{rs77433148} & \cellcolor{gray!6}{-0.014} & \cellcolor{gray!6}{0.008} & \cellcolor{gray!6}{9.1e-02} & \cellcolor{gray!6}{-0.004} & \cellcolor{gray!6}{0.008} & \cellcolor{gray!6}{6.2e-01} & \cellcolor{gray!6}{0.010} & \cellcolor{gray!6}{0.008} & \cellcolor{gray!6}{2.3e-01} & \cellcolor{gray!6}{-0.032} & \cellcolor{gray!6}{0.006} & \cellcolor{gray!6}{6.9e-07} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{0.007} & \cellcolor{gray!6}{8.2e-01}\\
cg09935388 & GFI1 & rs17518433 & -0.037 & 0.009 & 3.6e-05 & -0.024 & 0.010 & 1.6e-02 & -0.028 & 0.010 & 6.0e-03 & -0.054 & 0.010 & 4.2e-08 & -0.063 & 0.010 & 9.9e-11\\
\cellcolor{gray!6}{cg11660018} & \cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{rs1939110} & \cellcolor{gray!6}{-0.017} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{6.5e-10} & \cellcolor{gray!6}{-0.014} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{1.2e-05} & \cellcolor{gray!6}{-0.004} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{1.9e-01} & \cellcolor{gray!6}{-0.014} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{8.0e-07} & \cellcolor{gray!6}{-0.012} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{1.0e-05}\\
cg16823042 & AGAP2 & rs1048691 & 0.016 & 0.003 & 5.1e-08 & 0.013 & 0.003 & 1.0e-05 & 0.011 & 0.004 & 3.5e-03 & 0.019 & 0.003 & 1.3e-08 & 0.015 & 0.004 & 3.5e-05\\
\addlinespace
\cellcolor{gray!6}{cg21566642} & \cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{rs3748971} & \cellcolor{gray!6}{-0.009} & \cellcolor{gray!6}{0.006} & \cellcolor{gray!6}{1.6e-01} & \cellcolor{gray!6}{-0.011} & \cellcolor{gray!6}{0.006} & \cellcolor{gray!6}{6.9e-02} & \cellcolor{gray!6}{-0.007} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{6.2e-03} & \cellcolor{gray!6}{-0.034} & \cellcolor{gray!6}{0.004} & \cellcolor{gray!6}{9.2e-15} & \cellcolor{gray!6}{-0.024} & \cellcolor{gray!6}{0.004} & \cellcolor{gray!6}{2.4e-08}\\
cg23387569 & AGAP2 & rs1048691 & 0.026 & 0.004 & 1.6e-10 & 0.020 & 0.004 & 2.2e-07 & 0.014 & 0.005 & 2.2e-03 & 0.027 & 0.004 & 2.6e-10 & 0.020 & 0.004 & 1.5e-06\\
\cellcolor{gray!6}{cg23771366} & \cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{rs72967500} & \cellcolor{gray!6}{-0.010} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{2.4e-06} & \cellcolor{gray!6}{-0.014} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{6.7e-07} & \cellcolor{gray!6}{-0.010} & \cellcolor{gray!6}{0.001} & \cellcolor{gray!6}{1.8e-16} & \cellcolor{gray!6}{-0.011} & \cellcolor{gray!6}{0.001} & \cellcolor{gray!6}{2.1e-13} & \cellcolor{gray!6}{-0.012} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{1.3e-12}\\
cg25305703 & CASC21 & rs9643220 & 0.028 & 0.004 & 1.5e-10 & 0.023 & 0.004 & 1.6e-07 & 0.032 & 0.005 & 2.6e-09 & 0.020 & 0.003 & 1.1e-08 & 0.018 & 0.004 & 3.3e-06\\
\cellcolor{gray!6}{cg26963277} & \cellcolor{gray!6}{KCNQ1} & \cellcolor{gray!6}{rs463924} & \cellcolor{gray!6}{-0.018} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{1.6e-14} & \cellcolor{gray!6}{-0.015} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{1.2e-08} & \cellcolor{gray!6}{-0.008} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{5.6e-03} & \cellcolor{gray!6}{-0.012} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{6.3e-09} & \cellcolor{gray!6}{-0.015} & \cellcolor{gray!6}{0.002} & \cellcolor{gray!6}{7.5e-12}\\
\addlinespace
cg27241845 & ALPPL2 & rs56080708 & 0.038 & 0.011 & 4.5e-04 & 0.052 & 0.012 & 2.5e-05 & 0.095 & 0.010 & 6.4e-22 & 0.102 & 0.010 & 8.4e-25 & 0.051 & 0.011 & 4.4e-06\\
\bottomrule
\multicolumn{18}{l}{\textsuperscript{} P = p value}\\
\multicolumn{18}{l}{\textsuperscript{} N = sample size}\\
\multicolumn{18}{l}{\textsuperscript{} Those estimates in bold are at FDR < 0.05, and so are said to have replicated in that timepoint}\\
\end{tabular}}
\end{table}
\end{landscape}

(ref:sup-fig1-07-cap) __Comparison of two-sample Mendelian randomization results when using the discovery (ARIES, n = 1018) and replication (NSHDS, n = 468)__. On the left-hand side of each column the bracketed numbers represent the number of instrumental variables for that CpG site. 

(ref:sup-fig1-07-scap) Comparison of two-sample Mendelian randomization results when using the discovery (ARIES, n = 1018) and replication (NSHDS, n = 468)

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/07-dnam_lungcancer_mr/sup_fig1} 

}

\caption[(ref:sup-fig1-07-scap)]{(ref:sup-fig1-07-cap)}(\#fig:sup-fig1-07)
\end{figure}

There was little evidence of different effect estimates between ever and never smokers at individual CpG sites (__Figure \@ref(fig:sup-fig2-07)__, Z-test for difference, P>0.5). There was some evidence for a possible effect of methylation at cg21566642-_ALPPL2_ and cg23771366-_PRSS23_ on squamous cell lung cancer (OR=0.85 [95% confidence interval (CI)=0.75,0.97] and 0.91 [95% CI=0.84,1.00] per SD [14.4% and 5.8%] increase, respectively) as well as methylation at cg23387569-_AGAP2_, cg16823042-_AGAP2_, and cg01901332-_ARRB1_ on lung adenocarcinoma (OR=0.86 [95% CI=0.77,0.96], 0.84 [95% CI=0.74,0.95], and 0.89 [95% CI=0.80,1.00] per SD [9.47%, 8.35%, and 8.91%] increase, respectively). However, none of the results withstood multiple testing correction (FDR<0.05) (__Figure \@ref(fig:sup-fig3-07)__). For those CpGs where multiple mQTLs were used as instruments (cg05575921-_AHRR_ and cg01901332-_ARRB1_), there was limited evidence for heterogeneity in MR effect estimates (Q-test, P>0.05, __Table \@ref(tab:sup-tab6-07)__).

(ref:sup-fig2-07-cap) __DNA methylation – lung cancer Mendelian randomization effect estimates in ever and never smokers__. On the left-hand side of each column the bracketed numbers represent the number of instrumental variables for that CpG site. * indicates that the SNP(s) being used to instrument that CpG site are more than 1MB away from the CpG site in the genome (trans).

(ref:sup-fig2-07-scap) DNA methylation – lung cancer Mendelian randomization effect estimates in ever and never smokers

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/07-dnam_lungcancer_mr/sup_fig2-never_v_ever_smokers} 

}

\caption[(ref:sup-fig2-07-scap)]{(ref:sup-fig2-07-cap)}(\#fig:sup-fig2-07)
\end{figure}

(ref:sup-fig3-07-cap) __Mendelian randomization of DNA methylation on three lung cancer subgroups__ On the left-hand side of each column the bracketed numbers represent the number of instrumental variables for that CpG site. * indicates that the SNP(s) being used to instrument that CpG site are more than 1MB away from the CpG site in the genome (trans). Squamous = squamous cell carcinoma, Small = small cell carcinoma, Adeno = adenocarcinoma.

(ref:sup-fig3-07-scap) Mendelian randomization of DNA methylation on three lung cancer subgroups

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/07-dnam_lungcancer_mr/sup_fig3-lc_subtype_mr} 

}

\caption[(ref:sup-fig3-07-scap)]{(ref:sup-fig3-07-cap)}(\#fig:sup-fig3-07)
\end{figure}

\begin{table}[!h]

\caption{(\#tab:sup-tab6-07)Estimates of heterogeneity of MR estimates across multiple SNPs}
\centering
\begin{tabular}[t]{lllll}
\toprule
CpG & outcome & N SNP & Q & P\\
\midrule
\cellcolor{gray!6}{cg05575921} & \cellcolor{gray!6}{Lung cancer (ever)} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{1.838} & \cellcolor{gray!6}{0.17}\\
cg05575921 & Small cell lung cancer & 2 & 0.019 & 0.89\\
\cellcolor{gray!6}{cg05575921} & \cellcolor{gray!6}{Lung cancer (never)} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{1.424} & \cellcolor{gray!6}{0.23}\\
cg05575921 & Lung adenocarcinoma & 2 & 0.437 & 0.51\\
\cellcolor{gray!6}{cg05575921} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.003} & \cellcolor{gray!6}{0.96}\\
\addlinespace
cg05575921 & Squamous cell lung cancer & 2 & 1.168 & 0.28\\
\cellcolor{gray!6}{cg01901332} & \cellcolor{gray!6}{Lung cancer (ever)} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.085} & \cellcolor{gray!6}{0.77}\\
cg01901332 & Small cell lung cancer & 2 & 0.004 & 0.95\\
\cellcolor{gray!6}{cg01901332} & \cellcolor{gray!6}{Lung cancer (never)} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.321} & \cellcolor{gray!6}{0.57}\\
cg01901332 & Lung adenocarcinoma & 2 & 0.780 & 0.38\\
\addlinespace
\cellcolor{gray!6}{cg01901332} & \cellcolor{gray!6}{Lung cancer} & \cellcolor{gray!6}{2} & \cellcolor{gray!6}{0.965} & \cellcolor{gray!6}{0.33}\\
cg01901332 & Squamous cell lung cancer & 2 & 1.266 & 0.26\\
\bottomrule
\multicolumn{5}{l}{\textsuperscript{} N SNP = number of SNPs used in the analysis as instrumental}\\
\multicolumn{5}{l}{variables}\\
\multicolumn{5}{l}{\textsuperscript{} Q = Cochrane’s Q statistic}\\
\multicolumn{5}{l}{\textsuperscript{} Lung cancer (ever) = lung cancer in ever smokers}\\
\multicolumn{5}{l}{\textsuperscript{} Lung cancer (never) = lung cancer in never smokers}\\
\multicolumn{5}{l}{\textsuperscript{} Where P < 0.05, there is good evidence of heterogeneity across}\\
\multicolumn{5}{l}{individual SNPs}\\
\end{tabular}
\end{table}

\pagebreak

Single mQTLs for cg05575921-_AHRR_, cg27241845-_ALPPL2_, and cg26963277-_KCNQ1_ showed some evidence of association with smoking cessation (former vs. current smokers), although these associations were not below the FDR<0.05 threshold (__Figure \@ref(fig:sup-fig4-07)__).

(ref:sup-fig4-07-cap) __Associations of mQTLs and smoking behaviours__. Some SNPs that were genotyped in the TRICL consortium were not within the TAG consortium, thus were not available for analysis here. Units for the traits: age of smoking initiation = log years, ever vs. never smoked = log odds, former vs current smoker = log odds.

(ref:sup-fig4-07-scap) Associations of mQTLs and smoking behaviours

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/07-dnam_lungcancer_mr/sup_fig4-mqtl_smoking_mr} 

}

\caption[(ref:sup-fig4-07-scap)]{(ref:sup-fig4-07-cap)}(\#fig:sup-fig4-07)
\end{figure}

#### Potential causal effect of _AHRR_ methylation on lung cancer risk: one sample MR {#ahrr-one-sample-mr}
In the CCHS, a per (average methylation-increasing) allele change in a four-mQTL allele score was associated with a 0.73% [95% CI=0.56,0.90] increase in methylation (P<1x10^-10^) and explained 0.8% of the variance in cg05575921-_AHRR_ methylation (F-statistic=74.2). Confounding factors were not strongly associated with the genotypes in this cohort (P>=0.11) (__Table \@ref(tab:sup-tab7-07)__).  Results provided some evidence for an effect of cg05575921 methylation on total lung cancer risk (HR=0.30 [95% CI=0.10,1.00] per SD (9.2%) increase) (__Table \@ref(tab:sup-tab8-07)__). The effect estimate did not change substantively when stratified by smoking status (__Table \@ref(tab:sup-tab8-07)__). \linebreak

\begin{table}[!h]

\caption{(\#tab:sup-tab7-07)Association of \textit{AHRR} methylation and methylation allele score with confounding factors in the CCHS}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lllllll}
\toprule
\multicolumn{1}{c}{ } & \multicolumn{3}{c}{Methylation} & \multicolumn{3}{c}{Allele score} \\
\cmidrule(l{3pt}r{3pt}){2-4} \cmidrule(l{3pt}r{3pt}){5-7}
Confounder & Beta & 95 CI & P & Beta & 95 CI & P\\
\midrule
\cellcolor{gray!6}{Sex} & \cellcolor{gray!6}{-0.62} & \cellcolor{gray!6}{-0.94; -0.29} & \cellcolor{gray!6}{2.0e-04} & \cellcolor{gray!6}{-1e-02} & \cellcolor{gray!6}{-0.04; 0.06} & \cellcolor{gray!6}{0.72}\\
Alcohol & 0.00 & -0.001; 0.009 & 8.5e-01 & 0e+00 & -0.000; 0.000 & 0.15\\
\cellcolor{gray!6}{Former vs never smokers} & \cellcolor{gray!6}{-3.07} & \cellcolor{gray!6}{-3.54; -2.61} & \cellcolor{gray!6}{2.0e-38} & \cellcolor{gray!6}{4e-03} & \cellcolor{gray!6}{-0.07; 0.08} & \cellcolor{gray!6}{0.91}\\
Current vs never smokers & -10.76 & -11.30; -10.22 & 1.0e-50 & 1e-02 & -0.08; 0.10 & 0.82\\
\cellcolor{gray!6}{Exposure to dust} & \cellcolor{gray!6}{-0.65} & \cellcolor{gray!6}{-1.04; -0.26} & \cellcolor{gray!6}{1.0e-03} & \cellcolor{gray!6}{-5e-02} & \cellcolor{gray!6}{-0.12; 0.01} & \cellcolor{gray!6}{0.11}\\
\addlinespace
Exposure to passive smoking & -0.46 & -0.78; -0.15 & 4.0e-03 & -3e-02 & -0.08; 0.03 & 0.34\\
\cellcolor{gray!6}{Current use of tobacco to per cigarette equivalent} & \cellcolor{gray!6}{-0.06} & \cellcolor{gray!6}{-0.08; -0.03} & \cellcolor{gray!6}{9.0e-05} & \cellcolor{gray!6}{-1e-03} & \cellcolor{gray!6}{-0.005; 0.004} & \cellcolor{gray!6}{0.72}\\
Cumulative use of tobacco to per pack-year & -0.05 & -0.06; -0.04 & 4.0e-28 & -5e-04 & -0.002; 0.001 & 0.54\\
\bottomrule
\multicolumn{7}{l}{\textsuperscript{} For the allele score, genotypic effects were scaled to equate to the same magnitude of effect as a per 1\% increase in}\\
\multicolumn{7}{l}{methylation. Regressions were adjusted for the other factors in the tab}\\
\end{tabular}}
\end{table}

\begin{table}[!h]

\caption{(\#tab:sup-tab8-07)One-sample MR analysis of the effect of \textit{AHRR} methylation (\%) on lung cancer risk in the CCHS}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lllll}
\toprule
Smoking status & Total N & N events & Age and sex adjusted HR (95\% CI) & P\\
\midrule
\cellcolor{gray!6}{All} & \cellcolor{gray!6}{8,758} & \cellcolor{gray!6}{357} & \cellcolor{gray!6}{0.88 (0.78; 1.00)} & \cellcolor{gray!6}{0.05}\\
Current & 4,262 & 305 & 0.90 (0.79; 1.03) & 0.12\\
\cellcolor{gray!6}{Former} & \cellcolor{gray!6}{2,548} & \cellcolor{gray!6}{43} & \cellcolor{gray!6}{0.86 (0.61; 1.22)} & \cellcolor{gray!6}{0.41}\\
Never & 1,948 & 9 & 0.83 (0.38; 1.85) & 0.66\\
\bottomrule
\multicolumn{5}{l}{\textsuperscript{} HR = hazard ratio, P = P value}\\
\end{tabular}}
\end{table}

\linebreak

Given contrasting findings with the main MR analysis, where cg05575921-_AHRR_ methylation was not causally implicated in lung cancer, and the lower power in the one-sample analysis to detect an effect of equivalent size to the observational results (power = 19% at alpha = 0.05), a further two-sample MR was performed based on the four mQTLs using data from both CCHS (sample one) and the TRICL-ILCCO consortium (sample two). Results showed no strong evidence for a causal effect of DNA methylation on total lung cancer risk (OR=1.00 [95% CI=0.83,1.10] per SD increase) (__Figure \@ref(fig:sup-fig5-07)__). There was also limited evidence for an effect of cg05575921-_AHRR_ methylation when stratified by cancer subtype and smoking status (__Figure \@ref(fig:sup-fig5-07)__) and no strong evidence for heterogeneity of the mQTL effects (__Table \@ref(tab:sup-tab9-07)__). Conclusions were consistent when MR-Egger [@Bowden2015] was applied (__Figure \@ref(fig:sup-fig5-07)__) and when accounting for correlation structure between the mQTLs  (__Table \@ref(tab:sup-tab9-07)__). 

(ref:sup-fig5-07-cap) __Two-sample Mendelian randomization analysis of DNA methylation at _AHRR_ on lung cancer__. The top four plots assess the association of DNA methylation at _AHRR_ and different lung cancer subtypes. The bottom two plots assess the association between DNA methylation and all lung cancer after stratifying into groups of ever and never smokers.

(ref:sup-fig5-07-scap) Two-sample Mendelian randomization analysis of DNA methylation at _AHRR_ on lung cancer

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{figure/07-dnam_lungcancer_mr/sup_fig5-ahrr_2samp} 

}

\caption[(ref:sup-fig5-07-scap)]{(ref:sup-fig5-07-cap)}(\#fig:sup-fig5-07)
\end{figure}

\begin{table}[!h]

\caption{(\#tab:sup-tab9-07)Two sample MR analysis for \textit{AHRR}}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{lllllllll}
\toprule
\multicolumn{5}{c}{ } & \multicolumn{2}{c}{FE meta-analysis} & \multicolumn{2}{c}{Correction for correlation} \\
\cmidrule(l{3pt}r{3pt}){6-7} \cmidrule(l{3pt}r{3pt}){8-9}
Lung cancer & N SNP & Beta & SE & Beta & SE & Het-Q & Het-DF & Het-P\\
\midrule
\cellcolor{gray!6}{All} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{-0.005} & \cellcolor{gray!6}{0.010} & \cellcolor{gray!6}{-0.004} & \cellcolor{gray!6}{0.009} & \cellcolor{gray!6}{2.73} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{0.43}\\
Squamous cell & 4 & 0.003 & 0.024 & 0.004 & 0.014 & 6.65 & 3 & 0.08\\
\cellcolor{gray!6}{Adenocarcinoma} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{-0.022} & \cellcolor{gray!6}{0.011} & \cellcolor{gray!6}{-0.022} & \cellcolor{gray!6}{0.012} & \cellcolor{gray!6}{1.06} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{0.79}\\
Small cell carcinoma & 4 & 0.002 & 0.021 & 0.001 & 0.022 & 0.14 & 3 & 0.99\\
\cellcolor{gray!6}{All in never smokers} & \cellcolor{gray!6}{4} & \cellcolor{gray!6}{-0.003} & \cellcolor{gray!6}{0.025} & \cellcolor{gray!6}{-0.003} & \cellcolor{gray!6}{0.026} & \cellcolor{gray!6}{1.37} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{0.71}\\
\addlinespace
All in ever smokers & 4 & -0.017 & 0.010 & -0.016 & 0.011 & 1.63 & 3 & 0.65\\
\bottomrule
\multicolumn{9}{l}{\textsuperscript{} N SNP = number of SNPs used in the analysis as instrumental variables}\\
\multicolumn{9}{l}{\textsuperscript{} FE = fixed effects}\\
\multicolumn{9}{l}{\textsuperscript{} Q = Cochrane’s Q statistic}\\
\multicolumn{9}{l}{\textsuperscript{} DF = degrees of freedom}\\
\multicolumn{9}{l}{\textsuperscript{} P = P value}\\
\end{tabular}}
\end{table}

### Tumour and adjacent normal lung tissue methylation patterns {#lc-heathly-v-normal}
For cg05575921-_AHRR_, there was no strong evidence for differential methylation between adenocarcinoma tissue and adjacent healthy tissue (P=0.963), and weak evidence for hypermethylation in squamous cell carcinoma tissue (P=0.035) (__Figure \@ref(fig:fig4-07)__, __Table \@ref(tab:sup-tab10-07)__). For the other CpG sites there was evidence for a difference in DNA methylation between tumour and healthy adjacent tissue at several sites in both adenocarcinoma and squamous cell carcinoma, with consistent differences for CpG sites in _ALPPL2_ (cg2156642, cg05951221 and cg01940273), as well as cg23771366-_PRSS23_, cg26963277-_KCNQ1_, cg09935388-_GFI1_, cg0101332-_ARRB1_, cg08709672-_AVPR1B_ and cg25305703-_CASC21_. However, hypermethylation in tumour tissue was found for the majority of these sites, which is opposite to what was observed in the EWAS analysis.

(ref:fig4-07-cap) __Differential DNA methylation in lung cancer tissue__. A comparison of methylation at each of the 16 CpG sites identified in the meta-analysis was made between lung cancer tissue and adjacent healthy lung tissue for patients with lung adenocarcinoma (__A__) and squamous cell lung cancer (__B__). Data from The Cancer Genome Atlas was used for this analysis.

(ref:fig4-07-scap) Differential DNA methylation in lung cancer tissue

\begin{figure}
\includegraphics[width=0.5\linewidth]{figure/07-dnam_lungcancer_mr/Figure_4a} \includegraphics[width=0.5\linewidth]{figure/07-dnam_lungcancer_mr/Figure_4b} \caption{(ref:fig4-07-scap)}(\#fig:fig4-07)
\end{figure}

\begin{table}[!h]

\caption{(\#tab:sup-tab10-07)Comparison of MR results with tumour-healthy tissue differential methylation}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llllllllll}
\toprule
\multicolumn{2}{c}{ } & \multicolumn{2}{c}{Adeno-MR} & \multicolumn{2}{c}{Adeno-T/H} & \multicolumn{2}{c}{SCC-MR} & \multicolumn{2}{c}{SCC-T/H} \\
\cmidrule(l{3pt}r{3pt}){3-4} \cmidrule(l{3pt}r{3pt}){5-6} \cmidrule(l{3pt}r{3pt}){7-8} \cmidrule(l{3pt}r{3pt}){9-10}
CpG & Gene & Direction & P & Direction & P & Direction & P & Direction & P\\
\midrule
\cellcolor{gray!6}{cg23387569} & \cellcolor{gray!6}{AGAP2} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{0.006} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{8.8e-01} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{0.364} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{5.0e-01}\\
cg05575921 & AHRR & neg & 0.089 & neg & 9.6e-01 & neg & 0.052 & pos & 3.5e-02\\
\cellcolor{gray!6}{cg05951221} & \cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{0.916} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{8.0e-03} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{0.273} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{1.0e-09}\\
cg21566642 & ALPPL2 & neg & 0.673 & pos & 1.0e-04 & neg & 0.016 & pos & 8.0e-07\\
\cellcolor{gray!6}{cg27241845} & \cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{0.532} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{7.6e-02} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{0.101} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{2.8e-01}\\
\addlinespace
cg01901332 & ARRB1 & neg & 0.045 & pos & 3.0e-16 & neg & 0.778 & pos & 8.0e-12\\
\cellcolor{gray!6}{cg08709672} & \cellcolor{gray!6}{AVPR1B} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{0.129} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{3.0e-02} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{0.862} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{2.0e-02}\\
cg25305703 & CASC21 & pos & 0.170 & neg & 3.0e-05 & neg & 0.792 & neg & 8.0e-04\\
\cellcolor{gray!6}{cg03636183} & \cellcolor{gray!6}{F2RL3} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{0.151} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{8.0e-04} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{0.758} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{7.6e-01}\\
cg09935388 & GFI1 & neg & 0.831 & pos & 2.0e-04 & pos & 0.567 & pos & 2.0e-20\\
\addlinespace
\cellcolor{gray!6}{cg26963277} & \cellcolor{gray!6}{KCNQ1} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{0.299} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{3.6e-02} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{0.314} & \cellcolor{gray!6}{pos} & \cellcolor{gray!6}{3.0e-03}\\
cg23771366 & PRSS23 & pos & 0.819 & neg & 4.0e-09 & neg & 0.047 & neg & 3.3e-02\\
\cellcolor{gray!6}{cg11660018} & \cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{equal} & \cellcolor{gray!6}{0.999} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{3.0e-08} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{0.062} & \cellcolor{gray!6}{neg} & \cellcolor{gray!6}{1.3e-01}\\
\bottomrule
\multicolumn{10}{l}{\textsuperscript{} T/H = comparison of tumour and healthy tissue}\\
\multicolumn{10}{l}{\textsuperscript{} Adeno = Lung adenocarcinoma}\\
\multicolumn{10}{l}{\textsuperscript{} SCC = squamous cell carcinoma}\\
\multicolumn{10}{l}{\textsuperscript{} P = P value}\\
\multicolumn{10}{l}{\textsuperscript{} pos = hypermethylated}\\
\multicolumn{10}{l}{\textsuperscript{} neg = hypomethylated}\\
\multicolumn{10}{l}{\textsuperscript{} For tumour/healthy tissue comparison, pos = hypermethylation of the CpG within the tumour tissue}\\
\multicolumn{10}{l}{(neg is the opposite)}\\
\end{tabular}}
\end{table}

### Gene expression associated with mQTLs in blood and lung tissue
Of the 10 genes annotated to the 14 CpG sites, eight genes were expressed sufficiently to be detected in lung (_AVPR1B_ and _CASC21_ were not) and seven in blood (_AVPR1B_, _CASC21_ and _ALPPL2_ were not). Of these, gene expression of ARRB1 could not be investigated as the mQTLs in that region were not present in the GTEx data. rs3748971 and rs878481, mQTLs for cg21566642 and cg05951221 respectively, were associated with increased expression of _ALPPL2_ (P=0.002 and P=0.0001). No other mQTLs were associated with expression of the annotated gene at a Bonferroni corrected P value threshold (P<0.05/19=0.0026) (__Table \@ref(tab:sup-tab11-07)__).

\begin{table}[!h]

\caption{(\#tab:sup-tab11-07)mQTL-gene expression analysis in lung and whole blood using data from GTEx}
\centering
\resizebox{\linewidth}{!}{
\begin{tabular}[t]{llllllllllllll}
\toprule
\multicolumn{8}{c}{ } & \multicolumn{3}{c}{Lung} & \multicolumn{3}{c}{Whole blood} \\
\cmidrule(l{3pt}r{3pt}){9-11} \cmidrule(l{3pt}r{3pt}){12-14}
Gene & SNP & CpG & Trans & SNP chr:pos & A1 & A2 & MAF & Beta & SE & P & Beta & SE & P\\
\midrule
\cellcolor{gray!6}{AGAP2} & \cellcolor{gray!6}{rs1048691} & \cellcolor{gray!6}{cg16823042} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{12:58152948} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.207} & \cellcolor{gray!6}{0.011} & \cellcolor{gray!6}{0.046} & \cellcolor{gray!6}{0.81500} & \cellcolor{gray!6}{0.053} & \cellcolor{gray!6}{0.037} & \cellcolor{gray!6}{0.153}\\
AGAP2 & rs1048691 & cg23387569 & N & 12:58152948 & T & C & 0.208 & 0.011 & 0.046 & 0.81500 & 0.053 & 0.037 & 0.153\\
\cellcolor{gray!6}{AHRR} & \cellcolor{gray!6}{rs11746538} & \cellcolor{gray!6}{cg05575921} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{5:26366} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.121} & \cellcolor{gray!6}{-0.009} & \cellcolor{gray!6}{0.075} & \cellcolor{gray!6}{0.90100} & \cellcolor{gray!6}{-0.050} & \cellcolor{gray!6}{0.072} & \cellcolor{gray!6}{0.491}\\
AHRR & rs11744553 & cg05575921 & N & 5:427466 & C & G & 0.311 & -0.259 & 0.103 & 0.01230 & -0.032 & 0.110 & 0.773\\
\cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{rs56080708} & \cellcolor{gray!6}{cg27241845} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{2:233250683} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.078} & \cellcolor{gray!6}{0.020} & \cellcolor{gray!6}{0.131} & \cellcolor{gray!6}{0.87800} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{NA}\\
\addlinespace
ALPPL2 & rs878481 & cg05951221 & N & 2:233274475 & G & C & 0.408 & 0.396 & 0.123 & 0.00148 & NA & NA & NA\\
\cellcolor{gray!6}{ALPPL2} & \cellcolor{gray!6}{rs3748971} & \cellcolor{gray!6}{cg21566642} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{2:233285872} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.074} & \cellcolor{gray!6}{0.257} & \cellcolor{gray!6}{0.065} & \cellcolor{gray!6}{0.00011} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{NA}\\
F2RL3 & rs734568 & cg03636183 & N & 19:17015685 & T & C & 0.361 & 0.071 & 0.048 & 0.14500 & -0.093 & 0.039 & 0.017\\
\cellcolor{gray!6}{GFI1} & \cellcolor{gray!6}{rs17518433} & \cellcolor{gray!6}{cg09935388} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{1:92599172} & \cellcolor{gray!6}{A} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{0.236} & \cellcolor{gray!6}{0.114} & \cellcolor{gray!6}{0.052} & \cellcolor{gray!6}{0.03130} & \cellcolor{gray!6}{-0.001} & \cellcolor{gray!6}{0.036} & \cellcolor{gray!6}{0.986}\\
KCNQ1 & rs463924 & cg26963277 & N & 11:2717680 & T & C & 0.304 & 0.008 & 0.038 & 0.83000 & 0.003 & 0.028 & 0.919\\
\addlinespace
\cellcolor{gray!6}{PRSS23} & \cellcolor{gray!6}{rs1939110} & \cellcolor{gray!6}{cg11660018} & \cellcolor{gray!6}{N} & \cellcolor{gray!6}{11:86505120} & \cellcolor{gray!6}{T} & \cellcolor{gray!6}{C} & \cellcolor{gray!6}{0.286} & \cellcolor{gray!6}{-0.151} & \cellcolor{gray!6}{0.092} & \cellcolor{gray!6}{0.10100} & \cellcolor{gray!6}{0.026} & \cellcolor{gray!6}{0.042} & \cellcolor{gray!6}{0.534}\\
PRSS23 & rs72967500 & cg23771366 & N & 11:86515072 & T & C & 0.132 & -0.061 & 0.067 & 0.36300 & 0.014 & 0.027 & 0.614\\
\bottomrule
\multicolumn{14}{l}{\textsuperscript{} Trans = trans mQTL (Yes/No)}\\
\multicolumn{14}{l}{\textsuperscript{} chr:position = chromosome:position}\\
\multicolumn{14}{l}{\textsuperscript{} MAF = minor allele frequency}\\
\multicolumn{14}{l}{\textsuperscript{} A1 = effect allele}\\
\multicolumn{14}{l}{\textsuperscript{} P = P value}\\
\end{tabular}}
\end{table}

## Discussion {#discussion-07}
In this study, 16 CpG sites associated, at P<1x10^-7^, with lung cancer in a meta-analysis of EWAS, of which 14 have been previously identified in relation to smoke exposure [@Joehanes2016] and six were highlighted in a previous study as being associated with lung cancer [@Baglietto2017]. This previous study used the same data from the four cohorts investigated here, but in a discovery and replication, rather than meta-analysis framework. Overall, using MR we found limited evidence supporting a potential causal effect of methylation at the CpG sites identified in peripheral blood on lung cancer. These findings are in contrast to previous analyses suggesting that methylation at two CpG sites investigated (in _AHRR_ and _F2RL3_) mediated > 30% of the effect of smoking on lung cancer risk [@Fasanelli2015]. This previous study used methods which are sensitive to residual confounding and measurement error that may have biased results [@Richmond2016; @Hemani2017]. These limitations are largely overcome using MR [@Richmond2016].  While there was some evidence for an effect of methylation at some of the other CpG sites on risk of subtypes of lung cancer, these effects were not robust to multiple testing correction and were not validated in the analysis of tumour and adjacent normal lung tissue methylation nor in gene expression analysis.

A major strength of the study was the use of two-sample MR to integrate an extensive epigenetic resource and summary data from a large lung cancer GWAS to appraise causality of observational associations with >99% power. Evidence against the observational findings were also acquired through tissue-specific DNA methylation and gene expression analyses.

Limitations include potential “winner’s curse” which may bias causal estimates in a two-sample MR analysis towards the null if the discovery sample for identifying genetic instruments is used as the first sample, as was done for the main MR analysis using data from ARIES [@Burgess2011]. However, findings were similar when using replicated mQTLs in NSHDS, indicating the potential impact of this bias was minimal (__Figure \@ref(fig:sup-fig1-07)__). Another limitation relates to the potential issue of consistency and validity of the instruments across the two samples. For a minority of the mQTL-CpG associations (4 out of 16), there was limited replication across time points and in particular, 6 mQTLs were not strongly associated with DNA methylation in adults. Further, the primary data used for the first sample in the two-sample MR was ARIES, which contains no male adults. If the mQTLs identified vary by sex and time, then this could bias the results. However, the replication cohort NSHDS contains adult males. Therefore, the 10 mQTLs that replicated in NSHDS are unlikely to be biased by the sex discordance. Also, the findings for cg05575921 _AHRR_ in CCHS, which contains both adult males and females, were replicated in a two-sample MR analysis, suggesting these results are also not influenced by sex discordance. Caution is therefore warranted when interpreting the null results for the two-sample MR estimates for the CpG sites for which mQTLs were not repliacted, which could be the result of weak-instrument bias.

The lack of independent mQTLs for each CpG site did not allow us to properly appraise horizontal pleiotropy in the MR analyses. Where possible I only included cis-acting mQTLs to minimise pleiotropy and investigated heterogeneity where there were multiple independent mQTLs. Three mQTLs were nominally associated with smoking phenotypes, but not to the extent that this would bias the MR results substantially. Some of the mQTLs used influence multiple CpGs in the same region, suggesting genomic control of methylation at a regional rather than single CpG level. This was untested, but methods to detect differentially methylated regions (DMRs) and identify genetic variants which proxy for them may be fruitful in probing the effect of methylation across gene regions.

A further limitation relates to the inconsistency in effect estimates between the one- and two-sample MR analysis to appraise the causal role of _AHRR_ methylation. While findings in CCHS were supportive of a causal effect of _AHRR_ methylation on lung cancer (HR=0.30 [95% CI=0.10,1.00] per SD), in two-sample MR this site was not causally implicated (OR=1.00 [95% CI=0.83,1.10] per SD increase). It was verified that this was not due to differences in the genetic instruments used, nor due to issues of weak instrument bias. Given the CCHS one-sample MR had little power (19% at alpha = 0.05) to detect a causal effect with a size equivalent to that of the observational analysis, there should be more confidence in the results from the two-sample approach.

Peripheral blood may not be the ideal tissue to assess the association between DNA methylation and lung cancer. While a high degree of concordance in mQTLs has been observed across lung tissue, skin and peripheral blood DNA [@Shi2014], this was not directly evaluated here. A possible explanation for a lack of causal effect at _AHRR_ is due to the limitation of tissue specificity as it was found that the mQTLs used to instrument cg05575921 were not strongly related to expression of _AHRR_ in lung tissue. However, findings from MR analysis were corroborated by the lack of evidence for differential methylation at _AHRR_ between lung adenocarcinoma tissue and adjacent healthy tissue, and weak evidence for hypermethylation (opposite to the expected direction) in squamous cell lung cancer tissue. This result may be interesting in itself as smoking is hypothesized to influence squamous cell carcinoma more than adenocarcinoma. However, the result conflicts with that found in the MR analysis. Furthermore, another study investigating tumorous lung tissue (N=511) found only weak evidence for an association between smoking and cg05575921 _AHRR_ methylation, that did not survive multiple testing correction (P=0.02) [@Freeman2016]. However, the results do not fully exclude _AHRR_ from involvement in the disease process. _AHRR_ and _AHR_ form a regulatory feedback loop, which means that the actual effect of differential methylation or differential expression of _AHR_/_AHRR_ on pathway activity is complex [@Chen2017]. In addition, some of the CpG sites identified in the EWAS were found to be differentially methylated in the tumour and adjacent normal lung tissue comparison. While this could represent a false negative result of the MR analysis, it is of interest that differential methylation in the tissue comparison analysis was typically in the opposite direction to that observed in the EWAS. Furthermore, while this method can be used to minimize confounding, it does not fully eliminate the possibility of bias due to reverse causation (whereby cancer induces changes in DNA methylation) or intra-individual confounding e.g. by gene expression. Therefore, it doesn’t give conclusive evidence that DNA methylation changes at these sites are not relevant to the development of lung cancer.

While DNA methylation in peripheral blood may be predictive of lung cancer risk, according to the present analysis it is unlikely to play a causal role in lung carcinogenesis at the CpG sites investigated. Findings from this study issue caution over the use of traditional mediation analyses to implicate intermediate biomarkers (such as DNA methylation) in pathways linking an exposure with disease, given the potential for residual confounding in this context [@Richmond2016]. However, the findings of this study do not preclude the possibility that other DNA methylation changes (i.e. changes at different sites in the genome or in different tissues) are causally related to lung cancer (or other smoking-associated disease) [@Gao2016].


<!--chapter:end:07-dnam_lungcancer_mr.Rmd-->

# Discussion {#discussion-thesis}

## Overview {#overview-08}

Phenotypic variation cannot occur without molecular change. Identifying these changes adds to the aetiological understanding of traits and thus has the potential to uncover novel therapeutic targets. Further, studying the association between molecular marks and complex traits may yield new, valid predictors that could augment current prediction capacity within clinical practice [@Relton2010]. 

Given the strong links made by experimental researchers between DNA methylation and the regulatory processes in cells [@Suzuki2008; @Siegfried1999; @Bird2002; @Jones2012; @Ando2019; @Deaton2011; @Wolf1984; @Hellman2007], there was precedent for studying the covariation between DNA methylation and complex traits with the hope of discovering new facets underlying trait biology. 

Over the past 15 years, there have been some EWAS that have identified several reliable associations between DNA methylation and complex traits, for example with smoking [@Joehanes2016; @Shenker2013; @Zeilinger2013] and body mass index [@Mendelson2017; @Wahl2017; @Shah2015; @Demerath2015]. However, the trend has been for EWAS to identify few sites that reliably associate with complex traits. This was showcased in __Chapter \@ref(ewas-catalog)__. Understanding the aspects of EWAS that have led to this trend is imperative to progressing study designs and was the focus of this thesis.

In this body of work hundreds of published EWAS along with hundreds more EWAS I conducted were catalogued in an open access database. Using this data, I showed that unaccounted for technical effects may explain over 10% of reported associations. The biological characteristics, mean methylation level, variance and heritability, also explain over 10% of the variance in effect estimates. The trait variance captured by individual DNA methylation sites was highly varied and likely inflated amongst some studies. Upon further examination of this covariation, it was found that the average variance captured by all DNA methylation sites used in EWAS for 400 complex traits was near zero. This suggests DNA methylation measured in blood by the HM450 has low predictive capacity for complex traits. The capacity to understand aetiological aspects of traits from EWAS also appeared to be limited, although this was only tested amongst seven traits. Upon comparison of associations between DNA methylation and lung cancer from observational EWAS and Mendelian randomization analyses, confounding was confirmed to be a problem, potentially accounting for a substantial proportion of observed EWAS associations. 

These findings suggest that substantial changes are required in the design of EWAS to improve predictive capacity and enhance aetiological insight. 

## Extensions to this work {#extensions-to-work}

### Beyond the HM450 in blood {#beyond-the-hm450}

This work focuses on the measures taken for contemporary EWAS, namely use of the HM450 to measure blood-based DNA methylation. Given the correlation structure across all DNA methylation sites in the genome is not known, this work can not be generalised to DNA methylation as a whole. Further, although certain aspects of observational EWAS, such as propensity for confounding, will always hinder interpretation of results, other aspects of this thesis may not apply to data from other tissues. 

There is overwhelming evidence that complex traits are polygenic [@Timpson2017; @Visscher2017] and some hypothesise that they may even be omnigenic [@Boyle2017]. As DNA methylation is so tightly linked to gene expression regulation, it seems likely that either DNA methylation or something coupled to it has a substantial impact on the aetiology of many complex traits. Thus, the issues uncovered with EWAS in this thesis, such as the lack of covariation between DNA methylation and complex traits, is likely because too few sites are being measured in the wrong tissues. Finucane et al. devised a method, which used LD-score regression and gene expression data, to identify the most relevant tissue and cell types for 34 traits [@Finucane2018]. Without access to large datasets with DNA methylation available in a plethora of tissues, molecular epidemiologists could rely on inferences made from studies such as this to help design future EWAS. 

The impact of different methylation states of the genome, such as hydroxymethylation, is also beginning to be explored [@Wilkins2020; @Marshall2020; @Greco2016]. The current methods employed by EWAS, which revolve around bisulphite conversion, capture all methylation states as one measurement. If these states have differing effects, separating these out will increase power and impart greater biological understanding. 

In a similar vein to other omics, sequencing technology will likely continue to improve and will become cheap enough to use across population samples [@Shendure2017; @Stark2019]. Also, despite the vast majority of EWAS being conducted using blood (__Table \@ref(tab:study-data-tab)__), there are 42 tissue types recorded in the EWAS Catalog. The Cancer Genome Atlas (TCGA) has recorded DNA methylation data in a large number of tissues also [@Weinstein2013], and the trend to measure other tissues is likely to continue, especially as the number of reliable sites identified in EWAS tends to be low. In addition, manuscripts using techniques to measure gene expression and DNA methylation in single cells are becoming more common [@Hedlund2018; @Papalexi2018; @Karemaker2018; @Gravina2015; @Farlik2015]. Given the issues of cell specificity, these studies may prove pivotal in advancement of the field of epigenetic epidemiology. 

As discussed in __Chapter \@ref(properties-of-ewas)__, DNA methylation is a binary measure, yet by pooling groups of cells and measuring methylation at each site as a proportion of the DNA molecules that are methylated, a continuous measure is derived. If cells of the same type are identical then one would expect they would be methylated at the same sites as one another [@Birney2016]. However, a mosaicism of methylation across cells may exist. If so, then pooling groups of cells for analysis, and taking account differences between higher order cell types, will remain a valid approach for EWAS. However, if strong evidence is provided that this cellular mosaicism is improbable between cells of the same type, rapid movement towards single-cell techniques is likely.

### New methods and data {#new-methods-and-data}

There is still substantial interest in assessing the association between DNA methylation and complex traits. In 2020, there have been over XXX EWAS conducted that have been added to the EWAS Catalog. Further, new methods are being developed to measure the association between DNA methylation and complex traits. Two recent examples include Zhang F et al., who created a command line tool to conduct EWAS using different models, OSCA, [@Zhang2019] and a study that developed a Bayesian approach to conduct EWAS, using various confounders including genotype in their model [@TrejoBanos2020]. 

This interest will hopefully lead to a continuation in developments across the field of molecular epidemiology, but the complex nature of molecular pathways to disease may make aetiological inference progression slow. Causal inference methods such as MR aid aetiological studies, but the lack of independent instruments coupled with the complexity of gene regulation make it difficult to be confident the key assumptions of MR (__Figure \@ref(fig:mr-diagram)__) are met [@Relton2010; @Richardson2018; @Relton2012; @Min2020]. Colocalization is now being readily used in the context of molecular MR [@Min2020; @Richardson2018], but this only provides evidence that the complex trait and the molecular phenotype have the same causal genetic variant(s) [@Richardson2018], and do not provide evidence against these variants being pleiotropic. 

Lack of large-scale studies was a problem in identifying valid instruments for individual CpG sites, including within my study in __Chapter \@ref(dnam-lung-cancer-mr)__, but this has been partially eleviated by the formation of GoDMC [@Min2020]. This consortium has already yielded interesting results. Min et al. performed MR to establish whether there was likely an effect of DNA methylation changes, measured by the HM450, on 116 complex traits [@Min2020]. Similarly to the results presented in this thesis, they found that evidence for the aetiological relevance of DNA methylation measured across those sites was severely lacking. In the future, establishing tissue-specific mQTLs will be important in understanding whether tissue-specific DNA methylation changes are likely to have an effect on complex trait variation.

For prediction, the complexity of establishing causality and understanding cellular function need not apply. Whether the goal is to identify DNA methylation differences that co-exist with disease states and could therefore help diagnose these states, or truly predict diseases before they arrive is important to consider. For the former, cross-sectional studies suffice, but for the latter cohort studies that have DNA methylation data collected prior to other measurements such as ALSPAC [@Fraser2013; @Boyd2013] are required. Larger studies, such as Generation Scotland [@Smith2013], provide the opportunity for developing more precise predictors and further, the power gained from the extra samples would enable one to estimate the total predictive capacity of DNA methylation for individual traits with relatively high precision using the methods laid out in __Chapter \@ref(h2ewas-chapter)__.

### Beyond DNA methylation {#beyond-dnam}

As the premise of aetiological EWAS is that DNA methylation changes may impact upon some cellular function, which leads to phenotypic changes, reliable associations between DNA methylation and complex traits is not enough to impart translatable opportunities. How DNA methylation is changing these cellular functions is key for two reasons, 1. it might not be possible to target DNA methylation directly to treat/prevent disease and 2. DNA methylation may just be tagging some other epigenetic mark and in fact be inconsequential to phenotypic state. Therefore, once a link between DNA methylation and complex traits is established, it is required that experimental work is undertaken to fill in the gap of how DNA methylation changes relate to cellular function differences that influence the trait.

With initiatives such as ENCODE and the Roadmap Epigenomics Project [@Dunham2012; @RoadmapEpigenomicsConsortium2015], along with gene expression datasets such as GTEx [@GTExConsortium2013], the functional implications of DNA methylation changes may be predicted. However, experimental work should be used to confirm these predictions.

As discussed in __Section \@ref(dnam-as-part-of-regulation)__, DNA methylation is not the only epigenetic mark in human cells. Lack of understanding and technology has been a hinderance to population based studies of histone modifications genome-wide. At least one such study has been conducted [@Marzi2018], and the frequency is likely to increase as the cost of high throughput chromatin immunoprecipitation procedures, such as ChIP-seq, decreases.  

Recently large-scale datasets have been developed to analyse the relationship between protein expression and gene expression with complex traits [@GTExConsortium2013; @Uhlen2015; @Thul2017]. Proteins are often the ultimate target for many pharmaceuticals, as understanding of function and quantification of proteins and their variants increases, protein-based epidemiological studies may supersede EWAS with regards to their frequency. 

Similarly to DNA methylation studies, problems with confounding and cell specificity will be present in protein and gene based studies. Modifications to RNA transcripts and proteins provide an additional level of complication. RNA transcripts can be spliced and altered by post-transcriptional modifications and proteins can be modified post-translation of gene transcript [@Hafner2019; @Corbett2018; @Wang2014; @Filipowicz2008]. In extreme cases, proteins have been known to have their function reversed after their state is modified. The protein p53 naturally acts as a tumour suppressor, but during cancer development there is evidence that the protein can be modified and become oncogenic [@Hafner2019]. 

Studying each molecular measure will come with its own difficulties, and each can add to our understanding of human phenotypic variation. Therefore, instead of any one study superseding others, it seems likely that using a combination to untangle biological complexity will become more common.

## Final conclusions {#final-conclusions}

The human body is unfathomably complex. Understanding it requires a huge concerted effort from the entire, global research community. Returning to the example of _p53_, by 2010 there had been nearly 50,000 studies on this single family of genes [@Lane2010]. The decades of research conducted to elucidate the function, importance and interactions of this single family of genes illustrates the patience required to understand the molecular underpinnings of disease. Given the brevity of existance molecular epidemiology has had, I'd argue that judging whether it has been a success or failure is a frivolous task. However, to speed up development of the field, there is a need to understand why EWAS have not yielded the aetiological or predictive capacity hoped. 

This thesis provides evidence that the study design of current EWAS is unlikely to provide substantial improvements in the ability to predict or understand the aetiological aspects of complex traits. 

Key next steps will be diversifying the tissue and cell types collected as well as the DNA methylation sites measured in the genome. Further, more experimental studies, that will inevitably come with time, will aid in epidemiological inferences.

It is important to note that this thesis, and many other molecular epidemiology studies, primarily focuses on samples of European origin. Datasets exist that contain individuals from different ethnic backgrounds and there have been EWAS conducted in non-Europeans (__Table \@ref(tab:study-data-tab)__), but there is certainly a bias towards European samples. To realise the full potential of molecular epidemiology and to help benefit all in our society, efforts should be made to reduce the bias in sample collection and expand analyses, where possible, to those of all ethnic backgrounds. 

Despite the apparent shortcomings, there is still great potential for EWAS to uncover important facets of complex trait biology. Imperative to the development of the studies will be the constant re-assessment of the predictive capacity and aetiological insights that can be gleaned from DNA methylation as more data is collected in different samples.

<!--chapter:end:08-discussion.Rmd-->

\appendix

 

<!--
If you feel it necessary to include an appendix, it goes here.
-->


# The First Appendix

This first appendix includes all of the R chunks of code that were hidden throughout the document (using the `include = FALSE` chunk tag) to help with readibility and/or setup.

**In the main Rmd file**



**In Chapter \@ref(ref-labels):**



# The Second Appendix, for Fun

<!--chapter:end:09-appendix.Rmd-->

<!--
The bib chunk below must go last in this document according to how R Markdown renders.  More info is at http://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html
-->

\backmatter

<!-- 
If you'd like to change the name of the bibliography to something else,
delete "References" and replace it.
-->

# References {-}
<!--
This manually sets the header for this unnumbered chapter.
-->
\markboth{References}{References}
<!--
To remove the indentation of the first entry.
-->
\noindent

<!--
To create a hanging indent and spacing between entries.  These three lines may need to be removed for styles that don't require the hanging indent.
-->

\setlength{\parindent}{-0.20in}
\setlength{\leftskip}{0.20in}
\setlength{\parskip}{8pt}


<!--
This is just for testing with more citations for the bibliography at the end.  Add other entries into the list here if you'd like them to appear in the bibliography even if they weren't explicitly cited in the document.
-->

---

<!--chapter:end:99-references.Rmd-->

