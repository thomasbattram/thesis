---
author: 'Thomas Battram'
date: 'September 2020' # Month and year of submission
title: "I made this template based on thesisdown to comply with the University of Bristol regulations"
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
toc-depth: 3 # change for the depth of the table of contents - 1 gives two levels, 2 gives 3 levels etc...
lot: true 
lof: true
space_between_paragraphs: true
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
abstract: |
  <style>
  body {
  text-align: justify}
  </style>
  
  My abstract will go here and it will be a solid abstract. Full of the things that go in abstracts. Such as numbers, acronyms, other words, and lots of punctuation. <br>
  
  It will have multiple paragraphs too!
  
acknowledgements: |
  <style>
  body {
  text-align: justify}
  </style>
  
  THIS IS WHERE YOU THANK PEOPLE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
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
  
  \textbf{EWAS} - epigenome-wide assoctation study <br>
  \textbf{GWAS} - genome-wide assoctation study <br>
  \textbf{h<sup>2</sup>} - narrow-sense heritability <br>
  \textbf{h<sup>2</sup><sub>SNP</sub>} - SNP-heritability <br>
  \textbf{H<sup>2</sup>} - broad-sense heritability <br>
  \textbf{MR} - Mendelian randomization <br>
  \textbf{mQTL} - methylation quantitative trait loci <br>
  \textbf{SNP} - single nucleotide polymorphism <br>
---





# Preface {.unnumbered}
This template is based on (and in many places copied directly from) the Reed College LaTeX template, but hopefully it will provide a nicer interface for those that have never used TeX or LaTeX before.  Using _R Markdown_ will also allow you to easily keep track of your analyses in **R** chunks of code, with the resulting plots and output included as well.  The hope is this _R Markdown_ template gets you in the habit of doing reproducible research, which benefits you long-term as a researcher, but also will greatly help anyone that is trying to reproduce or build onto your results down the road.

Hopefully, you won't have much of a learning period to go through and you will reap the benefits of a nicely formatted thesis.  The use of LaTeX in combination with _Markdown_ is more consistent than the output of a word processor, much less prone to corruption or crashing, and the resulting file is smaller than a Word file. While you may have never had problems using Word in the past, your thesis is likely going to be about twice as large and complex as anything you've written before, taxing Word's capabilities.  After working with _Markdown_ and **R** together for a few weeks, we are confident this will be your reporting style of choice going forward.

<!-- 
If you're still on the fence about using _R Markdown_, check out the resource for newbies available at <https://ismayc.github.io/rbasics-book/> or email us at <data@reed.edu>. 
-->

**Why use it?**

_R Markdown_ creates a simple and straightforward way to interface with the beauty of LaTeX.  Packages have been written in **R** to work directly with LaTeX to produce nicely formatting tables and paragraphs. In addition to creating a user friendly interface to LaTeX, _R Markdown_ also allows you to read in your data, to analyze it and to visualize it using **R** functions, and also to provide the documentation and commentary on the results of your project.  Further, it allows for **R** results to be passed inline to the commentary of your results.  You'll see more on this later.  

<!-- 
Having your code and commentary all together in one place has a plethora of benefits!
-->

**Who should use it?**

Anyone who needs to use data analysis, math, tables, a lot of figures, complex cross-references, or who just cares about the final appearance of their document should use _R Markdown_. Of particular use should be anyone in the sciences, but the user-friendly nature of _Markdown_ and its ability to keep track of and easily include figures, automatically generate a table of contents, index, references, table of figures, etc. should make it of great benefit to nearly anyone writing a thesis project.

**For additional help with bookdown** 
Please visit [the free online bookdown reference guide](https://bookdown.org/yihui/bookdown/).

<!--chapter:end:index.Rmd-->

# Introduction

DNA methylation is a dynamic, chemical modification to DNA that can occur at millions of sites across the genome. The modification may impact various traits as well as be an important biomarker or predictor. This thesis will focus on the most common study design for assessing the association between DNA methylation and complex traits, epigenome-wide association studies (EWAS).

To help inform design of future studies, there is a need to understand what has been discovered thus far in EWAS and what future EWAS are likely to add in the context of current EWAS and other study designs. A key element not understood is why DNA methylation at certain sites or regions of the genome tends to be associated with multiple traits. Potential reasons include technical artefacts, genetic factors or other strong confounding factors that are biasing results, or they could genuinely be of biological importance. Further, the proportion of trait variation captured by DNA methylation at the sites measured is unknown, which means one can only speculate at how much information can be gained from EWAS. Even if there is variation captured by DNA methylation sites, it's unclear whether identifying these sites provide extra biological understanding of traits above what can be found from other methods. It is also imperative to fully explore whether these sites are causally related to the trait of interest before making claims about how DNA methylation influences it.

In this chapter I describe DNA methylation in the context of the regulatory processes in human cells, discuss it's potential for use in population level studies and describe the current state of EWAS research. Then I explain how epigenetic epidemiologists can draw on the methods developed by geneticists to understand 1. what information has been gained from EWAS, 2. what information is left to gain from EWAS and 3. the causal nature of DNA methylation-trait associations identified in EWAS.

## DNA methylation as part of the regulatory machinery
DNA methylation is highly correlated with gene expression regulation [@Suzuki2008; @Siegfried1999; @Bird2002; @Jones2012]. This is the main mechanism by which it is thought DNA methylation can influence changes in phenotype. However, DNA methylation is just one of many epigenetic marks that are involved in gene regulation (__Figure \@ref(fig:epigenetic-marks)__), so here I briefly outline some of these regulatory marks and discuss DNA methylation in the context of this complex biological process. 

(ref:epigenetic-marks-cap) Graphic of epigenetic marks taken from @epigenetic-marks-figure.

\begin{figure}
\includegraphics[width=1\linewidth]{figure/01-introduction/epigenetic-marks} \caption{(ref:epigenetic-marks-cap)}(\#fig:epigenetic-marks)
\end{figure}

### Gene expression regulation
Gene expression is tightly controlled and only in the right circumstances will RNA polymerase II succeed in binding the correct site, initiating and finally completing the transcription process [@Kornberg1999]. The importance of this level of control is no more apparent than in the developmental stages of human life. Humans start as a single cell and after roughly nine months are transformed into a multicellular organism with trillions of cells, including hundreds of unique cell types. As these cells arise from a single progenitor they must contain identical genetic sequences (except a few somatic mutations). Therefore, the process by which the body is able to create such diversely functioning cells and tissues, must come from regulation of how the genetic sequence is read and from the regulation of its products. There are a plethora of methods cells use to regulate gene expression, protein expression and protein function post-transcriptionally [@Hafner2019; @Corbett2018; @Wang2014; @Filipowicz2008], but these are beyond the scope of this thesis. So I'll continue to describe gene expression regulation just in the context of epigenetic marks.

### Defining epigenetics
The definition of epigenetics is much debated [@Greally2018]. In the 1940s the 'epigenetic landscape' was introduced by Waddington to describe how genes influence cell fates [@Stern2000]. Since then the term "epigenetics" has been used in many forms, so to avoid confusion, throughout the rest of the thesis, here is what I mean when using the term __epigenetics__: the study of mitotically heritable changes in gene expression that occur without changes in DNA sequence. When referring to __epigenetic marks__ I'm referring to chemical changes to the genome and genome-bound proteins that are mitotically heritable and may influence gene expression without changing the DNA sequence. 

### Histone modifications 
Histones are DNA-bound proteins that when modified can influence chromatin state and transcription factor interactions with the DNA. These proteins are contained in nucleosomes, which consist of four histone proteins, each of which is present twice in the nucleosome. Post-translational modifications can occur to any of the histone monomers and these have been associated with both positive and negative changes in gene expression [@Bannister2011; @Berger2007; @Jenuwein2001]. Histone modifications are numerous and complex in nature. To briefly describe the complexity, there are at least ten types of histone modification that can occur, each of the histone monomers can be modified across many different sites, and for any one site mutiple of the same modification can occur. It is the combination of modifications across all histones that plays a role in gene expression regulation [Bannister2011; @Berger2007; @Jenuwein2001]. Furthermore, histone modifications are subject to rapid change upon environmental stimulus to help induce or repress gene expression [@Bannister2011]. The complexity of histone modifications and the practical difficulties in collecting or assaying samples to assess these epigenetic marks remains a barrier to their wide-spread measurement for use in population-based analyses [@Birney2016]. They may become far more prominent in the future as our understanding and ability to measure the modifications in a meaningful way increases. 

### DNA methylation {#dna-methylation}
DNA methylation is the addition of a methyl group to the DNA, which primarily occurs at the 5' cytosine of a CpG site. Little is known about the role of non-CpG site DNA methylation and current EWAS tend to only measure CpG methylation, so that will be my focus here. The function of this epigenetic mark was proposed back in 1975, where two papers suggested it represses gene expression [@Holliday1975; @Riggs1975]. Since then, its association with various important intracellular processes such as X-inactivation, genomic imprinting and suppression of transposon action have been elucidated [@Riggs1975; @Bell2000; @Yoder1997]. Despite this, the role DNA methylation plays in regulating gene expression is not fully understood and research is still ongoing. 

One thing ressearch has revealed is that the location of DNA methylation is important to its relationship with gene expression. CpG sites are not randomly distributed throughout the genome, but are often found in clusters [@Jones2012] and it's thought that methylation and de-methylation of CpG sites in groups is what drives their association with regulatory function. Location of the CpG sites relative to genes and other regulatory elements is also of importance. Several studies have shown that increased DNA methylation at transcription start sites tends to be associated with a decrease in gene expression [@Jones2012; @Ando2019; @Deaton2011], but gene body DNA methylation is positively correlated with expression (__Figure \@ref(fig:dnam-functions)__) [@Wolf1984; @Hellman2007]. This suggests that regulation of DNA methtylation in clusters at specific sites relative to genes are what drive its relationship with gene expression. To support this, there are clear biological processes that regulate DNA methylation at nearby sites together, for example, CpGs at transcription factor binding sites can be de-methylated as a group when the transcription factor binds [@Zhu2016]. Further, nearby sites are often statistically correlated [@Jaffe2012; @Suderman2018]. However, there is no evidence to suggest that neighbouring sites do indeed act in tandem or whether it is likely one site from the group is driving regulatory function. This is something I explore in (__Chapter \@ref(h2ewas-chapter)__).  

These strong associations between DNA methylation and gene expression does not necessarily mean that the addition or removal of methyl groups will actively impact gene expression. Elucidating the causal nature of the assoction between DNA methylation and gene expression has been fraught with difficulties and has often provided conflicting results. One study showed an enzyme that catalyses the addition of methyl groups to the DNA, DNA methyltransferase 3A, is required in haematopoeitic stem cells and for them to differentiate, suggesting gene expression changes required for differentiation were not possible without addition of methyl groups to the DNA [@Challen2012]. However, papers have provided evidence that DNA methylation is unlikely to initiate the 'silencing' of gene expression and may occur at transcription start sites of genes after they've already been repressed [@Lock1987; @Ohm2007]. To further complicate things, if DNA methylation does influence gene expression, the mechanism of action is unclear and may depend on the gene being examined. One study showed the presence of DNA methylation at the binding sites of the transcription factor, _MYC_, was inversely associated with it's binding [@Prendergast1991], but another study suggested the presence of DNA methylation didn't have the same impact on the binding of the transcription factor, _SP1_. Although the body of work presented in this thesis does not aim to explore if and how DNA methylation influences gene expression, it is important to note the relationship between the two isn't clear when thinking of the implications of DNA methylation-trait associations, this will be discussed further in the following sections.

(ref:dnam-functions-cap) Simplified diagrams of the associations between DNA methylation and gene regulation. In _a_, CpG sites are methylated at the promoter region, but not in the gene body, which is associated with lack of gene expression. In _b_, the opposite is occurring.

\begin{figure}
\includegraphics[width=1\linewidth]{figure/01-introduction/dnam-gene-expression} \caption{(ref:dnam-functions-cap)}(\#fig:dnam-functions)
\end{figure}

## Use of DNA methylation in a population setting {#dnam-phs}
The importance of DNA methylation in disease has already been established in rare developmental disorders caused by aberrant imprinting patterns [@Wrzeska2004; @Nicholls2000], but the relationship between DNA methylation and complex phenotypes is unclear and is the focus of this thesis. In this section I discuss the appeal of studying DNA methylation in this context, introduce the most common study design for doing so, EWAS, and overview some successes and complications of the work.

### The appeal of DNA methylation to epidemiologists {#appeal-of-dnam}
All epigenetic modifications are of potential interest to those studying any phenotype. Arguably, epigenetics could underlie all phenotypic changes and be the difference between individuals who develop disease and those who don't [@Relton2010]. Further, epigenetic marks are modifiable, which means theoretically it would be possible to prevent or treat any disease by altering the epigenetic patterns of individuals [@Weaver2004]. There are large practical issues with this, which are discussed in more detail in [Problems for EWAS]. However, even if targeting epigenetic marks is not easy, as long as it is possible to observe them they could be used as diagnostic biomarkers and predictors [@Relton2010; @Birney2016; @Koch2018; @Hentze2019]. Thus, the ability to measure, and the research in to understanding epigenetic mechanisms, could have broad consequences for public health. 

A major difference between DNA methylation and other epigenetic marks, that was alluded to earlier, is that DNA methylation is far more stable. Enzymes do exist that can actively de-methylate the DNA, for example the ten-eleven translocation (TET) enzymes, but cell division or excision of the nucleotide is required for full de-methylation of a DNA molecule [@Cortellino2011; @Kohli2013]. Biologically, this suggests DNA methylation might be involved in long-term repression of gene expression, which is thought to be the case for X-inactivation [@Venolia1983], and practically it makes studying the epigenetic mark easier because stability ensures the marks are more resistent to changes after collection of samples. Also, even though it isn't clear that DNA methylation precedes gene expression regulation, the regulatory processes that govern whether genes are transcribed are linked. There are known examples of how DNA methylation tends to associate with other epigenetic marks, including positive correlation with the histone modification H3K9me3 [@Jones2012] and histone deacetylation [@Jones2012; @Wade2001]. This means measuring DNA methylation may capture regulatory information, even if addition or removal of methyl groups to the DNA would have little impact on gene expression. Recently, it's been shown that epigenetic marks can be used to predict each other with high accuracy [@Ernst2015], adding weight to the argument DNA methylation measurements capture far more than just DNA methylation itself.

### Epigenome-wide association studies {#ewas}
EWAS are the most common study design for assessing the association between DNA methylation and a complex trait. They typically involve measuring hundreds of thousands of DNA methylation sites across the genome in a case-control or cohort setting and using linear models to assess the association between DNA methylation and the trait of interest. It's a study design that has been widely adopted over the past ten years and the relationship between a plethora of traits, from smoking to anthropometric measures to childhood adversities, and DNA methylation has now been studied [@Joehanes2016; @Breitling2011; @Wahl2017; @Yang2013]. There are also large consortia that are pooling samples to gain power for these studies, for example the Pregnancy and Epigenetics Consortium (PACE) [@Felix2018]. A few traits have been identified as being associated with large variations in DNA methylation, one of which is smoking, where thousands of sites have been identified and many replicated in EWAS of smoking [@Joehanes2016] and DNA methylation of a single locus can predict smoking status with high accuracy [@Philibert2020]. It has also been revealed the direction of effect at some sights is likely from smoking to DNA methylation and in fact over time the DNA methylation changes caused by smoking may be (mostly) reversible by giving up smoking [@Philibert2016]. Another complex trait shown to relate to large variation in DNA methylation across the genome is age, and like smoking, DNA methylation makes a highly accurate predictor for age [@Horvath2013; @Jones2015; @Horvath2018]. These studies have shown that large perturbations in the DNA methylome can be related to complex traits, highlighting the potential for EWAS for population health.

### Problems for EWAS {#problems-for-ewas}
Despite the promise of understanding the underlying biological processes related to traits, studying the relationship between DNA methylation and complex traits provides many practical difficulties that often make the results of EWAS hard to interpret [@Birney2016]. 

#### Confounding {#confounding}
One issue that plagues all observational epidemiology, including EWAS, is confounding. This is where the traits of interest share a common cause, and can bias effect estimates, hindering correct interpretation of the association between traits. Complex traits are strongly correlated with each other, often in clusters, which can lead to large amounts of measured and unmeasured confounding being present in EWAS. Of course, in order to produce therapies to prevent or treat disease by altering DNA methylation or other parts of the epigenome, causality must be established. Therefore, problems of confounding must be overcome in EWAS to use these results to start developing methods of targetting DNA methylation changes, this is discussed more in [Establishing causality].

#### Cell type heterogeneity {#cell-type-heterogeneity}
As discussed, epigenetic factors guide differentiation of a single pluripotent cell to hundreds of cell types in human development. As these cell types can have large differences in morphology and function, it is clear that epigenetic marks, including DNA methylation, will vary between cell types [@Houseman2012; @Jaffe2014]. This poses two distinct problems for EWAS. Firstly, when collecting samples to measure DNA methylation, unless cells are purified, then a pool of cell types will be present in the samples, each with their own distinct DNA methylation patterns. This can lead to issues of confounding by cell type. For example, in a case control study, cases may be more likely to have increased numbers of CD4+ Th2 immune cells and these cells may on average have a higher level of DNA methylation at site X. In this scenario if one were to take blood cells, measure DNA methylation, and assess the association between DNA methylation and the trait of interest, one might find an association between DNA methylation at site X and the trait, but this may just be function of the increased number of CD4+ Th2 cells present in cases and site X may have no causal relationship with the trait itself. There have been efforts to try and account for cell type heterogeneity in EWAS [@Houseman2012; @McGregor2016; @Teschendorff2017], but to completely prevent it's confounding effects, cells should be purified. The second problem arising from cell-type specific patterns of DNA methylation is the uncertainty that the cell type being studied is one in which DNA methylation covaries with the trait of interest. Non-invasive cells to collect, such as blood, skin, and saliva, are common amongst epidemiological studies, but it is unclear whether EWAS in these studies are relevant to a large proportion of complex traits. This is studied, with regards to blood, in __Chapter \@ref(h2ewas-chapter)__. Studies have actually shown high levels of correlation between DNA methylation across cell types at many CpGs [@Forest2018], but it is unknown whether the correlated sites are important to trait variation. Further, this correlation may complicate things with regards to epigenetic therapies. Some organs, such as the brain, are difficult to target with therapies so even if a promising epigenetic target is identified, it may be almost impossible to translate this into something clinically useful.

#### Measuring DNA methylation {#measuring-dna-methylation}
Ideally, in every sample, DNA methylation would be measured across all sites in the genome. Unfortunately, this is not currently possible and sequencing technologies that offer something similar are often very expensive. There are three alternatives available to DNA methylation studies. Firstly, one could sequence a small portion of the genome if this section is of particular interest, however this candidate gene approach is unlikely to be profitable unless the genes targeted already have good evidence for epigenetic variation with the trait of interest. Secondly, measuring DNA methylation on repeat sequences of the genome, such as long interspersed nuclear elements (LINEs) and short interspersed nuclear elements (SINEs), can provide estimates for global DNA methylation changes [@Yang2004]. These measurements indicate if a trait is related to large perturbations of DNA methylation across the genome, but gives little mechanistic insight into what effects these changes may be having, as methylation at functional genes is not measured. Thirdly, an array approach covering DNA methylation genome-wide at selected sites. This last approach is the most common for population-based studies as it enables measurement of DNA methylation at hundreds of thousands of sites at a relatively cheap price per sample [@Dedeurwaerder2011]. The most commonly used array currently is the Illumina Infinium HumanMethylation450 (HM450) Beadchip, which measures DNA methylation at over 450,000 sites across the whole genome. The technology is always improving and now the Illumina Infinium HumanMethylationEPIC Beadchip, measuring over 800,000 sites is being adopted by various studies. However, these arrays only measure roughly 1.5-4% of all CpG sites in the genome and there is no empirical evidence to show that these sites capture a substantial proportion of complex trait variation. This will be examined in __Chapter \@ref(h2ewas-chapter)__. 

Batch effects and technical artefacts can also substantially bias results in EWAS [@Price2018]. There has been considerable effort made to try and mitigate these effects and methods have been developed (some originally for use in RNA-based studies) to help correct for batch effects [@Leek2007; @Ritchie2015; @Perrier2018]. Further, sequencing methods have been used to identify potentially unreliable probes [@Zhou2017; @Naeem2014]. In __Chapter \@ref(properties-of-ewas)__ I explore the extent to which batch effects tend to be removed in current EWAS and whether EWAS results are enriched for potentially faulty probes.

#### Complexity of regulatory mechanisms 
EWAS identify single sites in the genome for which DNA methylation variation is associated with a trait of interest. As discussed, DNA methylation at a single site will likely be correlated with DNA methylation at neighbouring sites and other nearby epigenetic marks. This makes inferring mechanism of action very difficult. Differentially methylated region (DMR) analysis is often employed, which aims to determine if multiple neighbouring sites share an association with the trait of interest with the same direction of effect [@Jaffe2012; @Suderman2018]. These give evidence as to whether the sites covary similarly with the trait of interest, but don't provide evidence that the sites are acting independently or not. There are ways to circumvent the issues of biological complexity, but without additional gene expression data these often involve assuming the genes immediately adjacent to DNA methylation changes are of importance to the trait. However, no systematic evaluation of whether this assumption holds true for the majority of cases has been conducted.

#### Treatments {#treatments}
This is not a focus of my thesis, but for completion it is important to briefly note the complications of epigenetic-based therapies as they are an end goal of much epigenetic research. Currently there are therapies used in the clinic that target enzymes responsible for epigenetic alterations, for example DNA methyltransferase inhibitors and histone deacetylase inhibitors [@Piekarz2009; @Nebbioso2018]. They are primarily used to treat cancers, but as with many cancer treatments, are highly toxic. These therapies impact the epigenome globally and do not target any specific regions of the genome. This makes them highly undesirable for most diseases and as of yet there are no epigenetic therapies targeting specific regions of the genome. Methods, such as adapting CRISPR-cas9 enzymes, are being used in laboratories to alter DNA methylation at specific sites [@Pickar-Oliver2019], and some have even achieved _in vivo_ targeted epigenetic modulation in mice [@Liao2017]. However, it is unclear whether these techniques can be scaled up for clinical use in humans and how long it may take to overcome the various complications.


In summary, there is great potential for EWAS to identify sites in the genome that could be targeted for treatment, but there are several challenges still to overcome. A great importance should be placed on using the data available to inform future designs of EWAS to maximise the potential of these studies.


## Using methods from genetics to help inform future EWAS {#genetics-in-ewas}
The main commonality between EWAS and their counterpart in genetics, genome-wide association studies (GWAS), is the fact both assess the association between hundreds of thousands of markers genome-wide and complex traits. As germline genetic variants are fixed from conception, and these variants can act through pathways excluding DNA methylation changes, the genetic architecture of traits is likely vastly different to the epigenetic architecture. However, genetic epidemiologists have had to overcome various problems to help with the interpretation of GWAS, that are also present in EWAS. Further, genetic variants can be used as tools to augment the understanding of DNA methylation-trait associations. In this section I briefly describe some examples of these efforts and explain how they might be adapted to help inform future EWAS.

### The GWAS Catalog {#gwas-catalog}
The GWAS Catalog is a manually curated database of publicly available GWAS data, developed by the European Bioinformatics Institute (EBI) and made openly available to the public [@Buniello2019]. It has a broad range of applications for researchers, from replication of GWAS, to identifying overlapping GWAS signals between traits, to pooling the data to try and understand the genetic architecture of complex traits as a whole. Resources like this are invaluable to the genetic epidemiologist community and so developing a corollary database for EWAS may provide equal opportunity for epigenetic epidemiologists. Catalogues such as EWASdb [@Liu2019] and the EWAS Atlas [@Li2019] are currently available, but fall short of some key researcher requirements including ease of use and access to full summary statistics. The development of a new database, The EWAS Catalog, is the focus of __Chapter \@ref(ewas-catalog)__. 

### Total variance captured by all sites measured genome-wide {#heritability}
Before spending lots of time and resources on measuring the relationship between traits, it's important to have an understanding of the extent to which the exposure of interest covaries with the outcome of interest. Of course, if they are independent then studying the relationship between the two would be pointless. The phenotypic variance of a trait, $\sigma^2_{P}$, is a function of the environmental variance, $\sigma^2_{E}$, and genetic variance, $\sigma^2_{G}$, that contribute to the trait:

\begin{equation}
	\sigma^2_{P} = \sigma^2_{G} + \sigma^2_{E}
	(\#eq:phenotypic-variance)
\end{equation}

$\sigma^2_{G}$ is mostly comprised of the variance due to additive genetic effects ($\sigma^2_{A}$), and the proportion of phenotypic variance accounted for by the additive genetic variance is the narrow-sense heritability ($h^2$): 

\begin{equation}
	h^2 = \frac{\sigma^2_{A}} {\sigma^2_{P}}
	(\#eq:narrow-sense-heritability)
\end{equation}

It is possible to estimate $h^2$ by taking advantage of pedigree information in families. This has been done for a plethora of traits to establish that they have some additive genetic component (i.e. $\sigma^2_{A}$ > 0 and $h^2$ > 0). This provides adequate evidence that genetic variation influences these traits and thus there are genetic effects to identify. 

Initially, GWAS were conducted in hundreds or thousands of individuals and were identifying very few variants that could be said to reliably have an effect on the trait, and these sites explained an extremely small proportion of the heritability estimates (<1%) [@Maher2008]. Speculations were made about the reasons why this could be, for example the arrays were only capturing common genetic variation and it was rare genetic variation having the majority of the influence on phenotypes [@Manolio2009]. This provided a need to derive individual aspects of $h^2$ to inform future study design. If indeed common genetic variation contributed little to $h^2$ for the majority of traits, the GWAS approach would need to be re-thought and technologies would need to be made to capture genetic variants not reliably captured by existing arrays (e.g. rare variants). Yang et al. developed a method to estimate the contribution of all the single nucleotide polymorphisms (SNPs) measured on SNP-arrays to phenotypic variance (SNP-heritability or $h^2_{SNP}$) [@Yang2010]. SNP-heritability was subsequently shown not to be inconsequential for complex traits and so warranted continuing use of GWAS and the acquisition of larger samples to conduct these GWAS [@Yang2010].

Lack of associations and lack of phenotypic variance captured by DNA methylation sites has been observed in many EWAS, yet currently there is no corollary test to SNP-heritability to enable increased understanding of why this may be. Of course, there could be a variety of reasons for lack of signal in EWAS, which include what was discussed earlier, e.g. measuring the wrong tissue. If there is covariation of DNA methylation with complex traits, it may just be that lots of associations with small effect sizes across the entire genome contribute to this covariation and so EWAS with large sample sizes are required to reliably identify these associations. In __Chapter \@ref(h2ewas-chapter)__, I apply methods developed to assess SNP-heritability to estimate the proportion of phenotypic variance correlated with DNA methylation across a range of phenotypes.

### Inferring biology from signals {#inferring-biology-from-signals}
As discussed, the complexity of cellular processes makes it difficult to infer what consequences a change in methylation at a specific site may have. Similarly, for the majority of SNPs identified in GWAS, the functional change that relates to an association between genetic variation at that site and the trait of interest is unclear. Traits themselves are the result of a large number of complex biological pathways that are determined by potentially thousands of gene products. It is often assumed that the signal from GWAS highlight genomic regions of importance to the trait and thus as a step to investigate the nature of the signal, sites identified are mapped to nearby genes. These genes can then be mapped to pathways and gene set enrichment analysis performed to assess whether the genes identified are present in any particular pathways more than expected by chance. This method has been adopted by epigenetic epidemiologists for use to examine EWAS signal [@Phipson2016].

Establishing causality from DNA methylation signal is difficult ([Use of DNA methylation in a population setting], [Establishing causality]). Thus, when applying gene set enrichment analyses to identify prominent pathways in EWAS signals, the pathways identified may actually be related to a particular confounder rather than the trait of interest. This is important to remember when interpreting the results of such an analysis, but it doesn't render the results useless. There is a huge body of work that characterises gene action and relationships of this gene action with various traits. By mapping EWAS signals to genes and pathways, a path between the trait (or a confounder) and changes in DNA methylation might become more clear. One example of this comes with EWAS of smoking, that have consistently identified DNA methylation at the _AHRR_ gene [@Philibert2012; @Shenker2013; @Zeilinger2013; @Joehanes2016; @Bojesen2017]. This gene is known to play a role in handling toxic substances found in tobacco smoke [@Haarmann-Stemmann2006; @Larigot2018]. Thus, large changes in DNA methylation related to this gene points towards epigenetic changes at that locus influencing the cellular response to smoking. This shows, that despite difficulties in interpretting EWAS findings and subsequent pathway analysis, EWAS can actually add to the pool of information about underlying trait biology when used in conjuncture with other evidence. 

As DNA methylation changes may be a result of the trait (unlike genetic variation), pathway analysis for EWAS studies could capture biological consequences of the trait. This could allow for EWAS to identify facets of trait biology missed by GWAS studies, however it is unclear as to whether the analogous gene set enrichment design adopted by EWAS is adding to the information discovered by GWAS. In __Chapter \@ref(ewas-gwas-comp-chapter)__ I compare overlap of GWAS and EWAS signals in this context and discuss the use of both study designs in elucidating underlying trait biology.

### Establishing causality {#establishing-causality}

#### Mendelian randomization
As discussed, population-based studies of DNA methylation suffer from the same limitations as any observational epidemiology study, namely confounding and reverse causation. One method that aims to mitigate confounding is Mendelian randomization (MR) [@DaveySmith2003; @DaveySmith2014; @Richmond2016], which uses genetic variants as proxies for the exposure of interest in an instrumental variable framework (illustrated in __Figure \@ref(fig:mr-diagram)__). Using genetic variants as instruments has the advantage that the direction of effect will always be from instrument to exposure and not _vice versa_, making interpretation of the studies simpler. Furthermore, unlike environmental phenotypes, that tend to be highly correlated and clustered into groups, genetic variants associated with a trait tend to be unconfounded [@DaveySmith2003; @DaveySmith2014]. In the absence of assortative mating, genetic variants should be distributed randomly across the population, so in effect those grouped by genotype should exhibit differences in exposure, but confounding factors should not differ between genotype groups [@DaveySmith2014]. Assortative mating has been reliably shown to occur with some traits such as social behaviours and anthropetric measures [@Silventoinen2003; @Maes1997; @Eaves1981]. There currently isn't evidence of assortative mating on DNA methylation variation and so is ignored for the purposes of this thesis.

#### Availability of data for MR
Another advantage of MR is the data it uses. Thousands of GWAS have been conducted giving researchers ample instruments for a wide variety of traits and many of these instruments are easily accessible through databases such as the GWAS Catalog [@Buniello2019] and IEU Open GWAS Project [@Hemani2018]. Furthermore, it isn't necessary to use individual-level data to conduct MR studies; summary statistics from GWAS are all that is needed to provide data in a two-sample MR framework [@Inoue2010; @Pierce2013]. This is especially valuable to conducting MR studies using DNA methylation data, as no cohorts have measured DNA methylation, genotype and a broad range of phenotypes in a large enough sample to provide adequate power to test DNA methylation-phenotype associations in a MR context.

#### Assumptions of MR
In order for MR analyses to be valid, they must satisfy three instrumental variable assumptions, these are illustrated in __Figure \@ref(fig:mr-diagram)__. Testing assumption one, the instruments associate with the exposure of interest, is simple, but the other two assumptions can't technically be proven to be true. Horizontal pleiotropy, where genetic variants associate with more variables than just the exposure of interest, can lead to violations in assumptions two and three. Ideally, MR would be performed in the context where the genetic effect on the exposure had been characterised such that the mechanism of action was understood clearly. This would help give evidence against assumptions two and three being broken. Unfortunately, this is rarely possible. However, a plethora of methods have now been developed to test for pleiotropic effects, given the exposure of interest has multiple independent genetic variants reliably associated with it.

(ref:mr-diagram-cap) Mendelian randomization. Mendelian randomization can be used to test the causal nature of exposure-outcome relationships provided the assumptions are met. Assumption 1. There is an association between the instrument and the exposure. Assumption 2. There are no associations between the instrument and outcome, except through the exposure. Assumption 3. The instrument is not associated with any factors that confound the exposure-outcome relationship.

\begin{figure}
\includegraphics[width=1\linewidth]{figure/01-introduction/mr-diagram} \caption{(ref:mr-diagram-cap)}(\#fig:mr-diagram)
\end{figure}

#### Applying MR in a DNA methylation context
MR can be applied to studies of DNA methylation by using methylation quantitative trait loci (mQTL), genetic variants associated with changes in DNA methylation levels, as proxies for DNA methylation variation [@Relton2010; @Relton2012; @Richardson2018]. As mentioned previously, using a two-sample MR framework is especially useful to help increase power for these studies [@Relton2010]. Unfortunately, for each DNA methylation site few independent mQTLs have been identified. This prevents the use of various tests to examine whether the instruments are likely to be pleiotropic. Both cis-mQTLs (mQTLs within 1Mb of the DNA methylation site) and trans-mQTLs (mQTLs over 1Mb away from the DNA methylation site) have been identified in GWAS of DNA methylation variation. As genetic architecture of DNA methylation changes is also not well understood, the mechanism of action for each mQTL can only be speculated at present. Cis-mQTLs are thought to be less likely to be pleiotropic than trans-mQTLs as the mechanism of action seems more likely to be related to the binding of regulatory machinery that may influence DNA methylation levels, for example a genetic variant may decrease the affinity of a transcription factor for that region and so the transcription factor will bind less frequently and/or for a shorter period, this would lead to increased methylation at that site. On the contrary, the mechanism of trans-mQTL action, especially those on separate chromosomes to the DNA methylation site of interest, is more likely to be pleiotropic, for example a trans-mQTL could influence gene expression of a transcription factor that binds many sites and alters their DNA methylation [@Bonder2017], this would make the trans-mQTL associate with multiple DNA methylation sites. Therefore, if one limits mQTLs to those in cis, this gives greater confidence that horizontal pleiotropy isn't biasing results.

As mentioned, DNA methylation varies both temporally and across cell types. If the instruments used to represent DNA methylation are viewed as influencing life-time differences in DNA methylation between individuals, then temporal variation can be ignored. However, cell type-specific effects are likely to occur for some mQTLs. One could imagine a scenario in which blood cells require a specific gene (gene A) to be expressed that is completely useless in adipose cells, which could mean all adipose cells have 100% DNA methylation at the promoter region of gene A. Thus, any genetic variants that associate with DNA methylation variation in blood would not also associate with variation in adipose cells.

With all this in mind, it's important to maintain the idea that making strong conclusions of causality in the context of DNA methylation is difficult, but triangulating evidence from multiple sources could be key to understanding the role of DNA methylation in underlying trait biology [@Lawlor2016].

## Overview of thesis aims
DNA methylation has great potential for use in an epidemiological sense and as samples with DNA methylation data continue to grow it is important to understand the limitations of EWAS and how to maximise it's potential. My thesis aims to address this by exploring what information has been gained from EWAS (__Chapters \@ref(ewas-catalog) and \@ref(properties-of-ewas)__), what information is still to gain from EWAS (__Chapter \@ref(h2ewas-chapter)__), whether EWAS might add to our biological understanding of complex traits above GWAS (__Chapter \@ref(ewas-gwas-comp-chapter)__) and by applying MR in a particular case, the potential for confounding in EWAS (__Chapter \@ref(dnam-lung-cancer-mr)__). See the flowchart in __Figure \@ref(fig:thesis-flowchart)__ for a graphical depiction.

In __Chapter \@ref(ewas-catalog)__ a database of published EWAS is curated and made publicly available, which will be used in later chapters. The aim of __Chapter \@ref(properties-of-ewas)__ is to analyse the vast database jointly to allow the discovery of commonalities across methylome-trait associations and provide a platform to explore what is driving these commonalities. Further, the chapter explores the extent to which published results are reliable by assessing replication rate and whether sites measured by unreliable probes are prominent.

After exploring the information already gained from EWAS, __Chapter \@ref(h2ewas-chapter)__ investigates the information still to gain from EWAS. The aim of the chapter is to apply methods developed to assess SNP-heritability to estimate the proportion of complex trait variation that is associated with sites commonly measured in EWAS. 

__Chapter \@ref(ewas-gwas-comp-chapter)__ will then aim to assess whether the discoveries of EWAS may provide extra biological insight for traits of interest on top of those from GWAS. Tests will be applied to assess whether there is more overlap between the sites, genes or pathways identified by some large EWAS (N > 4500) and their corresponding GWAS than expected by chance.

Finally, __Chapter \@ref(dnam-lung-cancer-mr)__ will apply MR to explore the causal nature of associations between DNA methylation and lung cancer. This application case-study will compare and contrast findings to conventional EWAS estimates to give an example of the potential residual confounding that can be present in EWAS.

(ref:thesis-flowchart-cap) Flowchart showing questions being asked in the thesis and the corresponding chapters attempting to help answer them.

\begin{figure}
\includegraphics[width=1\linewidth]{figure/01-introduction/thesis-flowchart} \caption{(ref:thesis-flowchart-cap)}(\#fig:thesis-flowchart)
\end{figure}


<!--chapter:end:01-introduction.Rmd-->

# Methods

<!--chapter:end:02-methods.Rmd-->

# The EWAS Catalog: a database of epigenome-wide association studies {#ewas-catalog}





## Abstract
Epigenome-wide association studies (EWAS) seek to understand the link between patterns of DNA methylation, the addition of a methyl group to a DNA molectule that may change how the molecule interacts with other cellular factors, at thousands or millions of sites across the genome to various traits and exposures. In recent years, the increase in availability of DNA methylation measures in population-based cohorts and case-control studies has resulted in a dramatic increase in the number of EWAS being performed and published. To make this rich source of molecular data more accessible, a manually curated database has been made containing CpG-trait associations (at P < 1x10^-4^) from published EWAS, each assaying over 100,000 CpGs in at least 100 individuals. The database currently contains these associations from over 150 published EWAS as well as full summary statistics for over 180 million association tests of 418 EWAS in the Avon Longitudinal Study of Parents and Children (ALSPAC) and the Gene Expression Omnibus (GEO). It is accompanied by a web-based tool and R package that allow these associations to be easily queried. This database will give researchers the opportunity to quickly and easily query EWAS associations to gain insight into the molecular underpinnings of disaese as well as the impact of traits and exposures on the DNA methylome. The EWAS Catalog is available at: http://www.ewascatalog.org.

## Introduction
Epigenome-wide association studies (EWAS) aim to assess the associations between phenotypes of interest and DNA methylation across the genome [@Relton2010; @Mill2013; @Rakyan2011]. These associations may then be used for disease diagnosis or prediction [@Relton2010; @Mill2013; @Rakyan2011]. Also, unlike genetic variants, changes in DNA methylation are responsive to the environment and so may be targeted for treatment. EWAS of smoking [@Joehanes2016], body mass index (BMI) [@Wahl2017] and aging [@Horvath2013] have shown that various exposures are related to large perturbations in DNA methylation across the genome. Furthermore, a paper recently estimated that over 60% of the total proportion of BMI variation was captured by DNA methylation at about 150 CpG sites [@Banos2018]. In recent years, there has been a dramatic increase in the number of EWAS being performed and published due to technological advancements making it possible to measure DNA methylation at hundreds of thousands of CpG sites cheaply and effectively. Giving researchers easy access to EWAS outputs will help them gain insight into the molecular underpinnings of disease as well as the impact of traits and exposures on the DNA methylome. Furthermore, current collections of summary statistics have already proven useful to various fields, for example the GWAS Catalog [@Buniello2019] has been cited over 2000 times in papers contributing to new methods and exploring the genetic architecture of a plethora of traits.

At the time of making the database, to our knowledge, there were no databases that had collected well-curated EWAS on all traits (no just diseases) in an online database accessible to researchers. During production one database fulfilled those metrics: EWAS Atlas [@Li2019]. Other databases are available but are limited to certain diseases (e.g. MethHC [@Huang2015]). The EWAS Atlas provides a simple-to-use website with annotated CpG sites and information on traits. Ideally a database of EWAS results will provide summary statistics, including betas, standard errors and p-values where provided from publications, in an easily accessible manner, this enables researchers to explore various aspects of the published data without having to retrieve the published article. For example, researchers might compare effect estimates between studies in the database or check to see if their results are replicated in another published study. At the time of writing the EWAS atlas platform did not enable users to download effect estimates and standard errors. Another caveat is that there is currently only published data on the platform, not full summary statistics from EWAS. 

The EWAS Catalog aims to improve upon current databases to 1) allow easy and programmatic access to summary statistics for downstream analyses by researchers and 2) provide full summary statistics from a range of EWAS conducted in multiple cohorts. To this end we have produced The EWAS Catalog, a manually curated database of currently published EWAS, __NUMBER__ (originally 378) EWAS performed in the Avon Longitudinal Study of Parents and Children (ALSPAC) [@Fraser2013; @Boyd2013] and __NUMBER__ (originally 40) EWAS performed from data from the Gene Expression Omnibus (GEO) database. The process and data inclusion are summarised in __FIGURE__ (originally Supplementary Figure 1).

In this chapter, Dr James Staley built the original website, Dr Matthew Suderman has been key in development and maintenance of the website and there was a team to help gather and input the data. I helped develop and maintain the website, gather and input the data, run the EWAS within the ALSPAC cohort and on data from the GEO database. The team, led by myself, is continuing to develop and maintain the database. Full acknowledgements to the team can be found on the website: http://www.ewascatalog.org/about/.

## Methods

### Implementation
The EWAS Catalog web app was built using the Django Python package (https://djangoproject.com). The data is stored in a combination of  MySQL databases and fast random access files [@Li2011] and can be queried via the web app or the R package (www.github.com/ewascatalog/ewascatalog-r/). 

### Overview of publication data extraction
To identify publications, periodic literature searches are performed in PubMed using the search terms: "epigenome-wide" OR "epigenome wide" OR "EWAS" OR "genome-wide AND methylation" OR "genome wide AND methylation".

Our criteria for inclusion of a study into The EWAS Catalog are as follows: 

1. The EWAS performed must contain over 100 humans
2. The analysis must contain over 100,000 CpG sites
3. The DNA methylation data must be genome-wide
4. The study must include previously unpublished EWAS summary statistics

CpG-phenotype associations are extracted from studies at P < 1x10^-4^. Variables extracted can be found in __TABLE__ (NO ORIGINAL). All these criteria along with the variables extracted are documented on the website (www.ewascatalog.org/documentation). Experimental factor ontology (EFO) terms were mapped to traits to unify representation of these traits. These EFO terms were manually entered after looking up the trait in the European Bioinformatics Institute database (www.ebi.ac.uk/efo).

Based on these criteria, from 3rd July 2019, The EWAS Catalog contained 540,699 associations from 159 studies. 

### Overview of GEO data extraction
To recruit additional datasets suitable for new EWAS analysis, the geograbi R package (https://github.com/yousefi138/geograbi) was used to both query GEO for experiments matching The EWAS Catalog inclusion criteria (described above) and extract relevant DNA methylation and phenotype information. The query was performed on 20 March 2019 and identified 148 such experiments with 32,845 samples where DNA methylation and phenotype information could be successfully extracted. From these, the aim was to repeat the analyses performed in the publications linked by PubMed IDs to each GEO record. Thus, I looked up the corresponding full texts for each dataset and identified the main variables of interest. Of the 148 putative GEO studies, only 34 (23%) contained sufficient information to replicate the original analysis. 

### EWAS methods 

#### Avon Longitudinal Study of Parents and Children (ALSPAC)
EWAS were conducted for __NUMBER__ (originally 378) continuous and binary traits in peripheral blood DNA methylation of ALSPAC mothers in middle age (N = __NUMBER__ (originally 940) ), generated as part of the Accessible Resource for Integrated Epigenomics Studies (ARIES) project [@Relton2015]. The traits were extracted from the same time that blood was drawn for DNA methylation assays. 

__ADD IN QC STEPS AND COHORT INFO HERE__ (originally in Supplementary Material)

For all traits, linear regression models were fitted with DNA methylation at each site as the outcome and the phenotype as the exposure. DNA methylation was coded as beta values between 0 and 1. For a particular site, a beta value of 0 represents no methylation being detected in all cells measured and a value of 1 represents all cells being methylated at that site. Covariates included age, the top 10 ancestry principal components, and 20 surrogate variables. 

__ADD IN HOW PCS__

#### GEO datasets
EWAS were performed using 30 datasets, containing 36 traits were extracted from GEO using the geograbi R package (https://github.com/yousefi138/geograbi). 

__ADD IN QC STEPS HERE__ (originally in Supplementary Material)

A list of all the traits with corresponding citations is provided in __TABLE__ (originally Supplementary Table 1).
For all traits, linear regression models were fitted with DNA methylation as the outcome and the phenotype as the exposure as for the ARIES data. Twenty surrogate variables were included as covariates. Other covariates were considered, but surrogate variables only were used for two reasons: 1) to help automate the process and 2) because covariates used in the original EWAS were not included with many of the GEO datasets.

Statistical analyses were conducted in R (Version 3.3.3). The smartsva package [@Chen2017] was used to create surrogate variables and the ewaff R package (https://github.com/perishky/ewaff) was used to conduct the EWAS, all p-values are two-sided.

## Results

### Database interface and use
There are two ways to access this large, curated database: through the main website www.ewascatalog.org or by using the R package “ewascatalog”. The website provides a simple user interface, which resembles that of the GWAS catalog [@Buniello2019], whereby there is a single search bar to explore the database and links to tabs that contain documentation on the contents and how to cite its use (Figure 1). Users may enter a CpG, gene, genome position or trait into the search bar and it will rapidly return detail for relevant EWAS associations, including CpG, trait, sample size, publication and association (effect and P value) (Figure 1). This information along with additional information such as ancestry, outcome, exposure units, and tissue analysed are available for download as a tab-separated value (tsv) text file. Unlike other EWAS databases, we provide the option of downloading summary results for both the user’s search and for the entire database. 

\begin{figure}

{\centering \includegraphics[width=1\linewidth]{/Users/tb13101/Desktop/projects/Main_project/thesis/index/figure/03-ewas_catalog/using_the_catalog} 

}

\caption{Using the EWAS catalog. 
At the top of the figures is the home page URL, ewascatalog.org. 
Below that are examples of three types of searches possible: 
1. CpG sites, 2. genes and 3. traits. 
Finally, the results are displayed after searching the catalog for “Depression”. 
Circled in red is the download button, this button enables the user to download the results of their search as a tab-separated value file. 
This file will contain the information shown on the website as well as additional analysis information.}(\#fig:catalog-use)
\end{figure}

The R package, along with installation instructions and examples are available at https://github.com/ewascatalog/ewascatalog-r/. Once installed, the database can be queried directly in R using the “ewascatalog()” function similar to the website: simply supply the function with  a CpG site, gene, genome position or trait and the function returns the same output as is downloadable from the website.

## Discussion
In this chapter, a database of previously published EWAS and the full summary statistics of 418 newly performed EWAS within ALSPAC and GEO has been established. This is freely available for all researchers to use and provides a platform to explore what information has been gained from EWAS as well as a platform that can be used to pool all existing data to gain new insights into both the EWAS study itself and how DNA methylation associates with traits. Despite the fact The EWAS Atlas has similar aims to The EWAS Catalog, latter provides full summary statistics, extra information and a user-friendly platform to enable more downstream analyses. 

The EWAS catalog team will continue to collate and upload newly published EWAS and further increase the number of full summary statistics on the website by performing additional EWAS on available datasets and by inviting EWAS authors to provide full summary statistics. Currently work is ongoing to include additional functionality to allow users to easily and systematically compare their EWAS findings to EWAS in the database. With this full summary data, it is possible to make greater strides into discovering the epigenetic architecture of traits.

Therefore, despite the fact no extra information about EWAS was presented in this chapter, a platform has been made that easily enables us to explore 1) what information has been gained from EWAS and 2) the relationship between DNA methylation and all traits. This will be explored in the next chapters.


<!--chapter:end:03-ewas_catalog.Rmd-->

# Properties of EWAS

Here is a reference to Caroline's paper: [@Relton2010]

<!--chapter:end:04-properties_of_ewas.Rmd-->

# h2ewas {#h2ewas-chapter}

<!--chapter:end:05-m2.Rmd-->

# EWAS-GWAS comparison {#ewas-gwas-comp-chapter}

<!--chapter:end:06-ewas_gwas_comparison.Rmd-->

# Appraising the causal relevance of DNA methylation for risk of lung cancer {#dnam-lung-cancer-mr}






## Abstract

### Background
DNA methylation changes in peripheral blood have recently been identified in relation to lung cancer risk. Some of these changes have been suggested to mediate part of the effect of smoking on lung cancer. However, limitations with conventional mediation analyses mean that the causal nature of these methylation changes has yet to be fully elucidated.

### Methods
We first performed a meta-analysis of four epigenome-wide association studies (EWAS) of lung cancer (918 cases, 918 controls). Next, we conducted a two-sample Mendelian randomization analysis, using genetic instruments for methylation at CpG sites identified in the EWAS meta-analysis, and 29,863 cases and 55,586 controls from the TRICL-ILCCO lung cancer consortium, to appraise the possible causal role of methylation at these sites on lung cancer.

### Results
16 CpG sites were identified from the EWAS meta-analysis (FDR < 0.05), 14 of which we could identify genetic instruments for. Mendelian randomization provided little evidence that DNA methylation in peripheral blood at the 14 CpG sites play a causal role in lung cancer development (FDR > 0.05), including for cg05575921-_AHRR_ where methylation is strongly associated with both smoke exposure and lung cancer risk.

### Conclusions
The results contrast with previous observational and mediation analysis, which have made strong claims regarding the causal role of DNA methylation. Thus, previous suggestions of a mediating role of methylation at sites identified in peripheral blood, such as cg05575921-_AHRR_, could be unfounded. However, this study does not preclude the possibility that differential DNA methylation at other sites is causally involved in lung cancer development, especially within lung tissue.

## Introduction
Lung cancer is the most common cause of cancer-related death worldwide [@Ferlay2013]. Several DNA methylation changes have been recently identified in relation to lung cancer risk [@Fasanelli2015; @Baglietto2017; @McCarthy2016]. Given the plasticity of epigenetic markers, any DNA methylation changes that are causally linked to lung cancer are potentially appealing targets for intervention [@Strathdee2002; @Jones2002]. However, these epigenetic markers are sensitive to reverse causation, being affected by cancer processes [@Jones2002], and are also prone to confounding, for example by socio-economic and lifestyle factors [@Borghol2012; Elliott2014].

One CpG site, cg05575921 within the aryl hydrocarbon receptor repressor (_AHRR_) gene, has been consistently replicated in relation to both smoking [@Joehanes2016] and lung cancer [@Fasanelli2015; @Baglietto2017; @Bojesen2017] and functional evidence suggests that this region could be causally involved in lung cancer [@Zudaire2008]. However, the observed association between methylation and lung cancer might simply reflect separate effects of smoking on lung cancer and DNA methylation, i.e. the association may be a result of confounding [@Richmond2016], including residual confounding after adjustment for self-reported smoking behaviour [@Fewell2007; @Munafo2012].  Furthermore, recent epigenome-wide association studies (EWAS) for lung cancer have revealed additional CpG sites which may be causally implicated in development of the disease [@Fasanelli2015; @Baglietto2017]. 

Mendelian randomization (MR) uses genetic variants associated with modifiable factors as instruments to infer causality between the modifiable factor and outcome, overcoming most unmeasured or residual confounding and reverse causation [@DaveySmith2014; @DaveySmith2003]. In order to infer causality, three core assumptions of MR should be met: 1) The instrument is associated with the exposure, 2) The instrument is not associated with any confounders, 3) The instrument is associated with the outcome only through the exposure. MR may be adapted to the setting of DNA methylation [@Relton2012; @Relton2015; @Richardson2017] with the use of single nucleotide polymorphisms (SNPs) that correlate with methylation of CpG sites, known as methylation quantitative trait loci (mQTLs) [@Gaunt2016].

In this study, we performed a meta-analysis of four lung cancer EWAS (918 case-control pairs) from prospective cohort studies to identify CpG sites associated with lung cancer risk and applied MR to investigate whether the observed DNA methylation changes at these sites are causally linked to lung cancer.

In this chapter, Dr Rebecca Richmond performed analysis in the CCHS cohort (see section [Potential causal effect of _AHRR_ methylation on lung cancer risk: one sample MR] of the results) and contributed to writing the introduction and discussion. I completed all the analysis and wrote each section except the methods and results sections for which I did not complete the analysis. 

## Methods

### EWAS study details
A meta-analysis of four lung cancer case-control EWAS was conducted to identify DNA methlyation sites associated with lung cancer. DNA methylation in each EWAS was assessed using the Illumina Infinium® HumanMethylation450 BeadChip. All EWAS are nested within prospective cohorts that measured DNA methylation in peripheral blood samples before diagnosis: EPIC-Italy (185 case-control pairs), Melbourne Collaborative Cohort Study (MCCS) (367 case-control pairs), Norwegian Women and Cancer (NOWAC) (132 case-control pairs) and the Northern Sweden Health and Disease Study (NSHDS) (234 case-control pairs). Study populations, laboratory methods, data pre-processing and quality control methods have been described in detail elsewhere [@Baglietto2017] 3 and are outlined below.

At the various laboratory sites, samples were distributed into 96-well plates and processed in chips of 12 arrays (8 chips per plate) with case-control pairs arranged randomly on the same chip. Methylation data were pre-processed and normalized in each study, and probe filtering was performed as previously described [@Baglietto2017], leaving 465,886 CpGs suitable for the analysis in EPIC-Italy, 485,330 CpGs in MCCS, 450,890 CpGs in NOWAC and 482,867 CpGs in NSHDS.

#### European Prospective Investigation into Cancer and Nutrition-Italy (EPIC-Italy)
EPIC-Italy includes 47,749 volunteers (32,579 women) aged 35–70 years at the time of recruitment (1992–1998). Anthropometric measurements and lifestyle variables including detailed information on smoking history were collected at recruitment through standardized questionnaires, together with a blood sample. Within EPIC-Italy we conducted a nested case-control study utilizing incident cases diagnosed within follow-up and healthy controls individually matched to cases by gender, date of birth (±5 years), date of inclusion in the study and study centre. Analysis was performed for 185 incident cases diagnosed within follow-up and matched controls. Laboratory procedures were carried out at the Human Genetics Foundation (Turin, Italy) and DNA extracted from buffy coats as previously described [@Baglietto2017]. All participants signed an informed consent form, and the ethical review boards of the International Agency for Research on Cancer and of each local participating centre approved the study protocol.

#### Melbourne Collaborative Cohort Study (MCCS)
The MCCS is a prospective cohort study of 41,514 volunteers (24,469 women) aged between 27 and 76 years at baseline (1990-1994). At baseline attendance, participants completed questionnaires that measured demographic characteristics and lifestyle factors. Height and weight were directly measured, and a blood sample was collected and stored. Incident cases of lung cancer were identified through linkage with the State and National Cancer Registries during follow-up up to the end of 2011. The MCCS sample included 367 cases and 367 matched controls selected from MCCS participants who were lung cancer free at the age of diagnosis of the matching case (density sampling). Matching variables included gender, date of blood collection (within 6 months), date of birth (within 1 year), country of birth (Australia and UK versus Southern Europe), type of biospecimen (lymphocyte, buffy coat and dried blood spot) and smoking status (never smokers; short-term former smokers: quitting smoking less than 10 years before blood draw; long-term former smokers: quitting smoking 10 years or more before blood draw; current light smokers: less than 15 cigarettes per day at blood draw; and current heavy smokers: 15 cigarettes or more at blood draw). For the MCCS, laboratory procedures were carried out at the Genetic Epidemiology Laboratory, the University of Melbourne according to manufacturers' protocols. DNA extraction from lymphocytes and buffy coats was performed as previously described [@Baglietto2017]. The Cancer Council Victoria's Human Research Ethics Committee approved the study protocol. Subjects gave written consent to participate and for the investigators to obtain access to their medical records.

#### Norwegian Women and Cancer (NOWAC)
The biobank of the NOWAC cohort was established in the years 2003-2006. Those who filled in an eight-page questionnaire and accepted the invitation to donate blood were sent blood drawing equipment together with a two-page epidemiological questionnaire. Around 50 000 women returned two tubes of blood to the Institute of Community Medicine at UiT The Arctic University of Norway and data linkage to the National Cancer Registry of Norway was performed. During follow-up to the end of 2011, 132 eligible cases of lung cancer were identified and were used for the EWAS. For each case, one control with an available blood sample was selected and matched on time since blood sampling and year of birth in order to control for effects of storage time and ageing. The cases and the controls were processed together for all laboratory procedures in order to reduce any batch effect. Laboratory procedures were carried out at the Human Genetics Foundation (Turin, Italy). DNA extraction from buffy coats was performed as previously described [@Baglietto2017]. All participants gave informed consent. The study was approved by the Regional Committee for Medical and Health Research Ethics in North Norway. Data storage and linkage was approved by the Norwegian Data Inspectorate.

#### Northern Sweden Health and Disease Study (NSHDS)
NSHDS is an ongoing prospective cohort and intervention study intended for health promotion of the population of Västerbotten County in northern Sweden. All residents were invited to participate by attending a health check-up at their local health care centre at 40, 50 and 60 years of age. At the health check-up, participants were asked to complete a self-administered questionnaire covering various factors such as education, smoking habits, physical activity and diet. In addition, height and weight were measured and participants were asked to donate a blood sample. Incident lung cancer cases were identified through linkage to the regional cancer registry. One control was chosen at random for each lung cancer case from appropriate risk sets consisting of all cohort members alive and free of cancer (except non-melanoma skin cancer) at the time of diagnosis of the index case. Matching criteria were the same as for the MCCS except there was no matching for type of biospecimens as DNA was extracted from whole blood for all samples. After quality control, a total of 234 incident lung cancer cases and 234 individually matched controls were available for this analysis. Laboratory procedures for NSHDS were carried out at two sites. DNA extraction from the buffy coat was conducted at Umeå University, Sweden, as previously described. Illumina Infinium HumanMethylation450 BeadChip analysis was conducted at the ALSPAC/IEU Laboratory at the University of Bristol. All study subjects provided written informed consent at time of the recruitment into the NSHDS.

### EWAS Meta-analysis
To quantify the association between the methylation level at each CpG and the risk of lung cancer conditional logistic regression models were fitted for beta values of methylation (which ranges from 0 (no cytosines methylated) to 1 (all cytosines methylated)) on lung cancer status for the four studies. The cases and controls in each study were matched, details can be found above. Surrogate variables were computed in the four studies using the SVA R package [@Leek2016] and the proportion of CD8+ and CD4+ T cells, B cells, monocytes, natural killer cells and granulocytes within whole blood were derived from DNA methylation [@Houseman2012]. The following EWAS models were included in the meta-analysis: Model 1 – unadjusted; Model 2 – adjusted for 10 surrogate variables (SVs); Model 3 – adjusted for 10 SVs and derived cell proportions. EWAS stratified by smoking status was also conducted (never (N=304), former (N=648) and current smoking (N=857)). For Model 1 and Model 2, the case-control studies not matched on smoking status (EPIC-Italy and NOWAC) were adjusted for smoking.

An inverse-variance weighted fixed effects meta-analysis was performed of the EWAS (918 case-control pairs) using the [METAL software](http://csg.sph.umich.edu/abecasis/metal/). Direction of effect, effect estimates and the I^2^ statistic were used to assess heterogeneity across the studies in addition to effect estimates across smoking strata (never, former and current). All sites identified at a false discovery rate (FDR) < 0.05 in Model 2 and 3 were also present in the sites identified in Model 1. The effect size differences between models for all sites identified in Model 1 were assessed by a Kruskal-Wallis test and a post-hoc Dunn’s test. There was little evidence for a difference (P > 0.1), so to maximize inclusion into the MR analyses we took forward the sites identified in the unadjusted model (Model 1).

### Mendelian randomization
Two-sample MR was used to establish potential causal effect of differential methylation on lung cancer risk [@Inoue2010; @Pierce2013].

#### Sample 1: Accessible Resource for Integrated Epigenomic Studies (ARIES)
In the first sample, mQTL-methylation effect estimates ($\beta_{GP}$) for each CpG site of interest were identified in an mQTL database from the Accessible Resource for Integrated Epigenomic Studies (ARIES) (http://www.mqtldb.org). Details on the methylation pre-processing, genotyping and quality control (QC) pipelines are outlined below. 

__DNA methylation data__
Samples were drawn from the Avon Longitudinal Study of Parents and Children [@Boyd2013; Fraser2013]. Blood from 1,018 mother–child pairs were selected for analysis as part of the Accessible Resource for Integrative Epigenomic Studies (ARIES, http://www.ariesepigenomics.org.uk/) [@Relton2015]. There are three timepoints in children and two in their mothers, the timepoints with mean ages (in brackets) in ARIES are as follows for children: birth, childhood (7.5), adolescence (17.1) and for mothers: during pregnancy (28.7), and at middle age (46.9). Following DNA extraction, samples were bisulphite converted using the Zymo EZ DNA Methylation^TM^ kit (Zymo, Irvine, CA, USA). Following conversion, genome-wide methylation was measured using the Illumina Infinium HumanMethylation450 (HM450) BeadChip. Methylation data were normalised in R with the watermelon package [@Pidsley2013] using the Touleimat and Tost [@Touleimat2012] algorithm to reduce the non-biological differences between probes. Methylation data in ARIES were rank-normalised to remove outliers, and then Matrix eQTL software [@Gaunt2016] was used to perform preliminary association analysis of SNPs with all CpG sites in the Illumina Infinium HM450 array with the exception of those failing QC, and those reported to map to more than one location (n=19,834) or to contain a genetic variant at the CpG site (n=74,182) [@Naeem2014].

__Genetic data__
Children were genotyped using the Illumina HumanHap550 quad genome-wide SNP genotyping platform (Illumina Inc., San Diego, USA) by the Wellcome Trust Sanger Institute (WTSI, Cambridge, UK) and the Laboratory Corporation of America (LCA, Burlington, NC, USA). Individuals were excluded on the basis of incorrect gender assignment; abnormal heterozygosity (<0.320 or >0.345 for WTSI data; <0.310 or >0.330 for LCA data); high missingness (>3%); cryptic relatedness (>10% identity by descent) and non-European ancestry (detected by multidimensional scaling analysis). Following QC the final directly genotyped dataset contained 500,527 SNP loci.

Mothers were genotyped using the Illumina Human660W-quad genome-wide SNP genotyping platform (Illumina Inc., San Diego, USA) at the Centre National de Génotypage (CNG, Paris, France). Individuals were excluded based on non-European ancestry, missingness, relatedness, gender mismatches and heterozygosity. PLINK (v1.07) [@Purcell2007] was used to carry out quality control measures on an initial set of 10,015 subjects and 557,124 directly genotyped SNPs. Following QC the final directly genotyped dataset contained 526,688 SNP loci.

Imputation was performed to increase the SNP density for all genotyped mothers and children combined. Genotypes were phased together using ShapeIt, and then imputed against the 1000 genomes reference panel (phase 1 version 3, phased using ShapeIt version 2, December 2013, using all populations) using Impute (version 2.2.2). Genotypes were filtered to have Hardy-Weinberg equilibrium P > 5x10^-7^, MAF > 1% and imputation info score > 0.8. Best guess genotypes were used for subsequent analysis. The final imputed dataset used for the analyses presented here contained 8,074,398 loci.

Written informed consent has been obtained from all ALSPAC participants. Ethical approval for the study was obtained from the ALSPAC Ethics and Law Committee and Local Research Ethics Committees.
Please note that the study website contains details of all the data that is available through a fully searchable data dictionary: http://www.bris.ac.uk/alspac/researchers/data-access/data-dictionary/

### Sample 2: Transdisciplinary Research in Cancer of the Lung and The International Lung Cancer Consortium
In the second sample, summary data was extracted from a GWAS meta-analysis of lung cancer risk conducted by the Transdisciplinary Research in Cancer of the Lung and The International Lung Cancer Consortium (TRICL-ILCCO) (29,863 cases, 55,586 controls) for individuals genotyped using the Illumina Infinium OncoArray-500K BeadChip (Illumina Inc. San Diego, CA) and independent samples for which prior genotyping was performed [@McKay2017]. They were used to obtain mQTL-lung cancer estimates ($\beta_{GD}$).

For each independent mQTL (r^2^ < 0.01), we calculated the log odds ratio (OR) per SD unit increase in methylation by the formula $\frac{\beta_{GD}} {\beta_{GP}}$ (Wald ratio). Standard errors were approximated by the delta method [@Thomas2007]. Where multiple independent mQTLs were available for one CpG site, these were combined in a fixed effects meta-analysis after weighting each ratio estimate by the inverse variance of their associations with the outcome. Heterogeneity in Wald ratios across mQTLs was estimated using Cochran’s Q test, which can be used to indicate horizontal pleiotropy [@Bowden2015]. Differences between the observational and MR estimates were assessed using a Z-test for difference.

If there was evidence for an mQTL-CpG site association in ARIES in at least one time-point, it was assessed whether the mQTL replicated across time points in ARIES (FDR < 0.05, same direction of effect). Further, this association was re-analysed using linear regression of methylation on each genotyped SNP available in an independent cohort (NSHDS), using rvtests [@Zhan2016]. The same NSHDS samples on which DNA methylation was measured were genotyped using the Illumina Infinium OncoArray-500k BeadChip (Illumina Inc. San Diego, CA) and quality control parameters were applied under the recently published TRICL-ILCCO GWAS study on lung cancer [@McKay2017]. Genetic imputation was performed on these samples using the Haplotype Reference Consortium (HRC) Panel (release 1) [@McCarthy2016] through the Michigan Imputation Server [@Das2016]. Replicated mQTLs were included where possible to reduce the effect of winner’s curse using effect estimates from ARIES. We assessed the instrument strength of the mQTLs by investigating the variance explained in methylation by each mQTL (r^2^) as well as the F-statistic in ARIES __Supplementary Table 1__. The power to detect the observational effect estimates in the two-sample MR analysis was assessed a priori, based on an alpha of 0.05, sample size of 29,863 cases and 55,586 controls (from TRICL-ILCCO) and calculated variance explained (r^2^).

MR analyses were also performed to investigate the impact of methylation on lung cancer subtypes in TRICL-ILCCO: adenocarcinoma (11,245 cases, 54,619 controls), small cell carcinoma (2791 cases, 20,580 controls), and squamous cell carcinoma (7704 cases, 54,763 controls). We also assessed the association in never smokers (2303 cases, 6995 controls) and ever smokers (23,848 cases, 16,605 controls) [@McKay2017] 25. Differences between the smoking subgroups were assessed using a Z-test for difference.

We next investigated the extent to which the mQTLs at cancer-related CpGs were associated with four smoking behaviour traits which could confound the methylation-lung cancer association: number of cigarettes per day, smoking cessation rate, smoking initiation and age of smoking initiation using GWAS data from the Tobacco and Genetics (TAG) consortium (N=74,053) [@Furberg2010] 29.

### Supplementary analyses

#### Assessing the potential causal effect of _AHRR_ methylation: one sample MR
Given previous findings implicating methylation at _AHRR_ in relation to lung cancer [@Fasanelli2015; @Baglietto2017] 2, 3, we performed a one-sample MR analysis [@Haycock2016] 30 of _AHRR_ methylation on lung cancer incidence using individual-level data from the Copenhagen City Heart Study (CCHS) (357 incident cases, 8401 remaining free of lung cancer). Copenhagen City Heart Study is a prospective study of the general population [@Kaur-Knudsen2011]. Copenhagen residents were invited to complete a questionnaire and undergo a physical examination and are followed through a unique person identifier in the Danish health registries. All participants gave written informed consent, and a Danish ethics committee approved the study (KF100.2039/91).

__Phenotypic data__
Participants were asked whether they smoked at the day of attendance or previously. If they answered affirmative to either of these questions, they were asked about their current and former smoking behaviour, including age of smoking initiation, age of smoking cessation, and number of daily consumed cigarettes, cheroots, cigars, and weekly grams of pipe tobacco. Based on these answers, participants were categorized as never, former, and current smokers. In addition, participants reported on alcohol consumption, occupational exposure to dust and/or welding fumes, exposure to passive smoking, education, and familial cases of lung cancer. The answers were reviewed together with an examiner at the day of attendance. Body mass index was calculated as measured weight in kilograms divided by measured height (in meters) squared.

__Methylation data__
At the physical examination, blood samples were drawn for DNA from which _AHRR_ methylation extent was measured [@Bojesen2017]. The _AHRR_ cg05575921 methylation extent was measured in duplicate samples of bisulphite treated DNA from peripheral blood from 9,234 individuals. We used a Taqman assay developed in our own laboratory, and included standard curves, as well as internal controls in each 384-well plate. Coefficients of variation at the methylation level of 71% varied from 5.0 to 6.7%. Laboratory technicians were blinded to smoking and disease status of the individuals. Results were validated with pyrosequencing on a subset of samples.

__Genetic data__
Genotypes from the iCOGs array [@Bojesen2013] and prospective data on lung cancer incidence were also available for these participants. Of the 9234 individuals, genotype data from iCOGS on 8778 were available. In short, DNA isolated from leukocytes was genotyped with a custom Illumina iSelect genotyping array, designed to test genetic variants related to breast, ovary and prostate cancer, comprising roughly 211,000 SNPs after rigorous quality control [@Bojesen2013].

__Lung cancer data__
For lung cancer (ICD7, codes 1624 or 4624 until 1977, and ICD10, code C34 from 1978 and onwards), the date of first diagnosis was taken from the national Danish Cancer Registry from 1943 to December 2012.

__Identification of mQTLs for CCHS one-sample MR__
mQTLs located within 1Mb of cg05575921 _AHRR_ were identified in ARIES (FDR<0.05). Of those mQTLs which replicated within the CCHS, we performed an LD pruning step using a less stringent r^2^ threshold of 0.2 and generated an unweighted allele score, calculated by coding and then summing the alleles to reflect the average number of methylation-increasing alleles carried by an individual. Associations between the allele score and several potential confounding factors (sex, alcohol consumption, smoking status, occupational exposure to dust and/or welding fumes, passive smoking) were investigated. Then MR analyses were performed using two-stage Cox regression, with adjustment for age and sex, and further stratified by smoking status.

#### Tumour and adjacent normal methylation patterns
DNA methylation data from lung cancer tissue and matched normal adjacent tissue (N=40 squamous cell carcinoma and N=29 adenocarcinoma), profiled as part of The Cancer Genome Atlas (TCGA), were used to assess tissue-specific DNA methylation changes across sites identified in the meta-analysis of EWAS, as outlined previously [@Teschendorff2015] 31.

#### mQTL association with gene expression
For the genes annotated to CpG sites identified in the lung cancer EWAS, we examined gene expression in whole blood and lung tissue using data from the gene-tissue expression (GTEx) consortium [@GTExConsortium2013] 32.

Analyses were conducted in Stata (version 14) and R (version 3.2.2). For the two-sample MR analysis we used the MR-Base R package TwoSampleMR [@Hemani2016] 33. An adjusted P value that limited the FDR was calculated using the Benjamini-Hochberg method [@Benjamini1995] 34. All statistical tests were two-sided.

## Results
A flowchart representing our study design along with a summary of our results at each step is displayed in Figure 1.

(Figure 1 here)

### EWAS meta-analysis
The basic meta-analysis adjusted for study-specific covariates identified 16 CpG sites which were hypomethylated in relation to lung cancer (FDR<0.05, Model 1, Figure 2). Adjusting for 10 surrogate variables (Model 2) and derived cell counts (Model 3) gave similar results (Table 1). The direction of effect at the 16 sites did not vary between studies (median I2=38.6) (Supplementary Table 2), but there was evidence for heterogeneity of effect estimates at some sites when stratifying individuals by smoking status (Table 1).

(Figure 2 here)

(Table 1 here)

### Mendelian randomization
We identified 15 independent mQTLs (r2<0.01) associated with methylation at 14 of 16 CpGs. Ten mQTLs replicated at FDR<0.05 in NSHDS (Supplementary Table 3).  MR power analyses indicated >99% power to detect ORs for lung cancer of the same magnitude as those in the meta-analysis of EWAS.

There was little evidence for an effect of methylation at these 14 sites on lung cancer (FDR>0.05, Supplementary Table 4). For nine of 14 CpG sites the point estimates from the MR analysis were in the same direction as in the EWAS, but of a much smaller magnitude (Z-test for difference, P<0.001) (Figure 3).

For 9 of out the 16 mQTL-CpG associations, there was strong replication across time points (Supplementary Table 5) and 10 out of 16 mQTL-CpG associations replicated at FDR<0.05 in an independent adult cohort (NSHDS).  Using mQTL effect estimates from NSHDS for the 10 CpG sites that replicated (FDR<0.05), findings were consistent with limited evidence for a causal effect of peripheral blood-derived DNA methylation on lung cancer (Supplementary Figure 1).

(Figure 3 here)

There was little evidence of different effect estimates between ever and never smokers at individual CpG sites (Supplementary Figure 2, Z-test for difference, P>0.5). There was some evidence for a possible effect of methylation at cg21566642-ALPPL2 and cg23771366-PRSS23 on squamous cell lung cancer (OR=0.85 [95% confidence interval (CI)=0.75,0.97] and 0.91 [95% CI=0.84,1.00] per SD [14.4% and 5.8%] increase, respectively) as well as methylation at cg23387569-AGAP2, cg16823042-AGAP2, and cg01901332-ARRB1 on lung adenocarcinoma (OR=0.86 [95% CI=0.77,0.96], 0.84 [95% CI=0.74,0.95], and 0.89 [95% CI=0.80,1.00] per SD [9.47%, 8.35%, and 8.91%] increase, respectively). However, none of the results withstood multiple testing correction (FDR<0.05) (Supplementary Figure 3). For those CpGs where multiple mQTLs were used as instruments (cg05575921-_AHRR_ and cg01901332-_ARRB1_), there was limited evidence for heterogeneity in MR effect estimates (Q-test, P>0.05, Supplementary Table 6).

Single mQTLs for cg05575921-_AHRR_, cg27241845-_ALPPL2_, and cg26963277-_KCNQ1_ showed some evidence of association with smoking cessation (former vs. current smokers), although these associations were not below the FDR<0.05 threshold (Supplementary Figure 4).

#### Potential causal effect of _AHRR_ methylation on lung cancer risk: one sample MR
In the CCHS, a per (average methylation-increasing) allele change in a four-mQTL allele score was associated with a 0.73% [95% CI=0.56,0.90] increase in methylation (P<1 x 10-10) and explained 0.8% of the variance in cg05575921-_AHRR_ methylation (F-statistic=74.2). Confounding factors were not strongly associated with the genotypes in this cohort (P>=0.11) (Supplementary Table 7).  Results provided some evidence for an effect of cg05575921 methylation on total lung cancer risk (HR=0.30 [95% CI=0.10,1.00] per SD (9.2%) increase) (Supplementary Table 8). The effect estimate did not change substantively when stratified by smoking status (Supplementary Table 8).

Given contrasting findings with the main MR analysis, where cg05575921-_AHRR_ methylation was not causally implicated in lung cancer, and the lower power in the one-sample analysis to detect an effect of equivalent size to the observational results (power = 19% at alpha = 0.05), we performed further two-sample MR based on the four mQTLs using data from both CCHS (sample one) and the TRICL-ILCCO consortium (sample two). Results showed no strong evidence for a causal effect of DNA methylation on total lung cancer risk (OR=1.00 [95% CI=0.83,1.10] per SD increase) (Supplementary Figure 5). There was also limited evidence for an effect of cg05575921-_AHRR_ methylation when stratified by cancer subtype and smoking status (Supplementary Figure 5) and no strong evidence for heterogeneity of the mQTL effects (Supplementary Table 9). Conclusions were consistent when MR-Egger (27) was applied (Supplementary Figure 5) and when accounting for correlation structure between the mQTLs  (Supplementary Table 9).

### Tumour and adjacent normal lung tissue methylation patterns
For cg05575921-_AHRR_, there was no strong evidence for differential methylation between adenocarcinoma tissue and adjacent healthy tissue (P=0.963), and weak evidence for hypermethylation in squamous cell carcinoma tissue (P=0.035) (Figure 4, Supplementary Table 10). For the other CpG sites there was evidence for a difference in DNA methylation between tumour and healthy adjacent tissue at several sites in both adenocarcinoma and squamous cell carcinoma, with consistent differences for CpG sites in ALPPL2 (cg2156642, cg05951221 and cg01940273), as well as cg23771366-PRSS23, cg26963277-KCNQ1, cg09935388-GFI1, cg0101332-ARRB1, cg08709672-AVPR1B and cg25305703-CASC21. However, hypermethylation in tumour tissue was found for the majority of these sites, which is opposite to what was observed in the EWAS analysis.

(Figure 4 here)

### Gene expression associated with mQTLs in blood and lung tissue
Of the 10 genes annotated to the 14 CpG sites, eight genes were expressed sufficiently to be detected in lung (AVPR1B and CASC21 were not) and seven in blood (AVPR1B, CASC21 and ALPPL2 were not). Of these, gene expression of ARRB1 could not be investigated as the mQTLs in that region were not present in the GTEx data. rs3748971 and rs878481, mQTLs for cg21566642 and cg05951221 respectively, were associated with increased expression of ALPPL2 (P=0.002 and P=0.0001). No other mQTLs were associated with expression of the annotated gene at a Bonferroni corrected P value threshold (P<0.05/19=0.0026) (Supplementary Table 11).

## Discussion
In this study, we identified 16 CpG sites associated with lung cancer, of which 14 have been previously identified in relation to smoke exposure [@Joehanes2016] 9 and six were highlighted in a previous study as being associated with lung cancer [@Baglietto2017] 3. This previous study used the same data from the four cohorts investigated here, but in a discovery and replication, rather than meta-analysis framework. Overall, using MR we found limited evidence supporting a potential causal effect of methylation at the CpG sites identified in peripheral blood on lung cancer. These findings are in contrast to previous analyses suggesting that methylation at two CpG sites investigated (in _AHRR_ and _F2RL3_) mediated > 30% of the effect of smoking on lung cancer risk [@Fasanelli2015] 2. This previous study used methods which are sensitive to residual confounding and measurement error that may have biased results [@Richmond2016; Hemani2017] 12, 35. These limitations are largely overcome using MR [@Richmond2016] 12.  While there was some evidence for an effect of methylation at some of the other CpG sites on risk of subtypes of lung cancer, these effects were not robust to multiple testing correction and were not validated in the analysis of tumour and adjacent normal lung tissue methylation nor in gene expression analysis.

A major strength of the study was the use of two-sample MR to integrate an extensive epigenetic resource and summary data from a large lung cancer GWAS to appraise causality of observational associations with >99% power. Evidence against the observational findings were also acquired through tissue-specific DNA methylation and gene expression analyses.

Limitations include potential “winner’s curse” which may bias causal estimates in a two-sample MR analysis towards the null if the discovery sample for identifying genetic instruments is used as the first sample, as was done for our main MR analysis using data from ARIES [@Burgess2011] 36. However, findings were similar when using replicated mQTLs in NSHDS, indicating the potential impact of this bias was minimal (Supplementary Figure 1). Another limitation relates to the potential issue of consistency and validity of the instruments across the two samples. For a minority of the mQTL-CpG associations (4 out of 16), there was limited replication across time points and in particular, 6 mQTLs were not strongly associated with DNA methylation in adults. Further, our primary data used for the first sample in the two-sample MR was ARIES, which contains no male adults. If the mQTLs identified vary by sex and time, then this could bias our results. However, our replication cohort NSHDS contains adult males. Therefore, the 10 mQTLs that replicated in NSHDS are unlikely to be biased by the sex discordance. Also, we replicated the findings for cg05575921 _AHRR_ in CCHS, which contains both adult males and females, in a two-sample MR analysis, suggesting these results are also not influenced by sex discordance. Caution is therefore warranted when interpreting the null results for the two-sample MR estimates for the CpG sites for which mQTLs were not repliacted, which could be the result of weak-instrument bias.

The lack of independent mQTLs for each CpG site did not allow us to properly appraise horizontal pleiotropy in our MR analyses. Where possible we only included cis-acting mQTLs to minimise pleiotropy and investigated heterogeneity where there were multiple independent mQTLs. Three mQTLs were nominally associated with smoking phenotypes, but not to the extent that this would bias our MR results substantially. Some of the mQTLs used influence multiple CpGs in the same region, suggesting genomic control of methylation at a regional rather than single CpG level. This was untested, but methods to detect differentially methylated regions (DMRs) and identify genetic variants which proxy for them may be fruitful in probing the effect of methylation across gene regions.

A further limitation relates to the inconsistency in effect estimates between the one- and two-sample MR analysis to appraise the causal role of _AHRR_ methylation. While findings in CCHS were supportive of a causal effect of _AHRR_ methylation on lung cancer (HR=0.30 [95% CI=0.10,1.00] per SD), in two-sample MR this site was not causally implicated (OR=1.00 [95% CI=0.83,1.10] per SD increase). We verified that this was not due to differences in the genetic instruments used, nor due to issues of weak instrument bias. Given the CCHS one-sample MR had little power (19% at alpha = 0.05) to detect a causal effect with a size equivalent to that of the observational analysis, we have more confidence in the results from the two-sample approach.

Peripheral blood may not be the ideal tissue to assess the association between DNA methylation and lung cancer. While a high degree of concordance in mQTLs has been observed across lung tissue, skin and peripheral blood DNA [@Shi2014] 37, we were unable to directly evaluate this here. A possible explanation for a lack of causal effect at _AHRR_ is due to the limitation of tissue specificity as we found that the mQTLs used to instrument cg05575921 were not strongly related to expression of _AHRR_ in lung tissue. However, findings from MR analysis were corroborated by the lack of evidence for differential methylation at _AHRR_ between lung adenocarcinoma tissue and adjacent healthy tissue, and weak evidence for hypermethylation (opposite to the expected direction) in squamous cell lung cancer tissue. This result may be interesting in itself as smoking is hypothesized to influence squamous cell carcinoma more than adenocarcinoma. However, the result conflicts with that found in the MR analysis. Furthermore, another study investigating tumorous lung tissue (N=511) found only weak evidence for an association between smoking and cg05575921 _AHRR_ methylation, that did not survive multiple testing correction (P=0.02) [@Freeman2016] 38. However, our results do not fully exclude _AHRR_ from involvement in the disease process. _AHRR_ and _AHR_ form a regulatory feedback loop, which means that the actual effect of differential methylation or differential expression of _AHR_/_AHRR_ on pathway activity is complex [@Chen2017] 39. In addition, some of the CpG sites identified in the EWAS were found to be differentially methylated in the tumour and adjacent normal lung tissue comparison. While this could represent a false negative result of the MR analysis, it is of interest that differential methylation in the tissue comparison analysis was typically in the opposite direction to that observed in the EWAS. Furthermore, while this method can be used to minimize confounding, it does not fully eliminate the possibility of bias due to reverse causation (whereby cancer induces changes in DNA methylation) or intra-individual confounding e.g. by gene expression. Therefore, it doesn’t give conclusive evidence that DNA methylation changes at these sites are not relevant to the development of lung cancer.

While DNA methylation in peripheral blood may be predictive of lung cancer risk, according to the present analysis it is unlikely to play a causal role in lung carcinogenesis at the CpG sites investigated. Findings from this study issue caution over the use of traditional mediation analyses to implicate intermediate biomarkers (such as DNA methylation) in pathways linking an exposure with disease, given the potential for residual confounding in this context [@Richmond2016] 12. However, the findings of this study do not preclude the possibility that other DNA methylation changes are causally related to lung cancer (or other smoking-associated disease) [@Gao2016] 40.


<!--chapter:end:07-dnam_lungcancer_mr.Rmd-->

# Conclusion {-}

If we don't want Conclusion to have a chapter number next to it, we can add the `{-}` attribute.

**More info**

And here's some other random info: the first paragraph after a chapter title or section head _shouldn't be_ indented, because indents are to tell the reader that you're starting a new paragraph. Since that's obvious after a chapter or section title, proper typesetting doesn't add an indent there.


<!--chapter:end:08-conclusion.Rmd-->

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

