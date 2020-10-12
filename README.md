# A thesis attempt

Thesis written using [thesisdown](https://github.com/ismayc/thesisdown). This was altered to comply with the University of Bristol's regulations by Matt Lee: [bristolthesis](https://github.com/mattlee821/bristolthesis).

Current version of the thesis can be found [here](index/_book)

Plan for September/October:

| Task                            | Comments needed | Comments needed from | Complete |
| ------------------------------- |:---------------:|:--------------------:|:--------:|
| Discussion V1                   | N 			  	| 					   | Y 		  |
| EWAS-GWAS comparisons V2        | Y 			  	| TG + NT              | N 		  |
| Chapters integrated into thesis | N 			  	|					   | N 		  |
| Properties of EWAS V2           | Y 			  	| GH + TG + NT         | N 		  |
| Intro V3                        | Y 			  	| TG + NT              | N 		  |
| Discussion V2                   | Y 	  		  	| TG + NT         	   | N 		  |
| Finished everything (mostly...) | N 			  	|                      | N 		  |


## Meetings
Meeting notes and items can be found in [meetings](meetings)

## changes to formatting

### removing red boxes around cross-references

Add `\usepackage[hidelinks]{hyperref}` to [template.tex](index/template.tex) -- this can replace `\usepackage{hyperref}`

### list of figures

Within chunk header, use `fig.scap='small caption'`. In this example `small caption` will appear in the list of figures and the figure caption will remain as what was stated for the option `fig.cap`

### toc depth

To manually change the toc depth, in [index.Rmd](index/index.Rmd), swap `thesisdown::thesis_pdf: default` for 
` thesisdown::thesis_pdf: 
	toc: true
    toc-depth: TOC-DEPTH-CHOICE
` -- remember indents (not sure how to show on readme)

To make sure the depth of heading numbers matches the toc depth, add `  \setcounter{secnumdepth}{$toc-depth$}` to [template.tex](index/template.tex) below `\setcounter{tocdepth}{$toc-depth$}` -- around line 155.

## log of errors when building

### Error: Package inputenc Error: Unicode character (U+2003) (inputenc) not set up for use with LaTeX.

__Extra details__: This occured when copying text over from a paper into a chapter. Unicode character (U+2003) is just whitespace.

__Solution__: Just re-entered the text part by part and re-built the thesis each time to check it worked.

### Unable to get references for word

__Solution__: Only knit to word + remove abstract, abbreviations, acknowledgements etc. from yaml header. __NOTE__: to knit to pdf, it requires these in the yaml header to be present! 
