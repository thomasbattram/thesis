# A thesis attempt

Thesis written using [thesisdown](https://github.com/ismayc/thesisdown). This was altered to comply with the University of Bristol's regulations by Matt Lee: [bristolthesis](https://github.com/mattlee821/bristolthesis).

Current version of the thesis can be found [here](index/_book)

Plan for September/October:

| Task                            | Completion date | Comments needed | Comments needed from |
| ------------------------------- |:---------------:|:---------------:|:--------------------:| 
| Discussion V1                   | 2020-09-18      | N 			  | 					 |
| Chapters integrated into thesis | 2020-09-18      | N 			  |						 |
| Properties of EWAS V2           | 2020-09-30      | Y 			  | GH + TG + NT         |
| EWAS-GWAS comparisons V2        | 2020-09-30      | Y 			  | TG + NT              |
| Intro V3                        | 2020-09-25      | Y 			  | TG + NT              |
| Discussion V2                   | 2020-10-02		| N (not yet) 	  |                      |
| Finished everything (mostly...) | 2020-10-09 		| N 			  |                      |


## Meetings
Meeting notes and items can be found in [meetings](meetings)

## log of errors when building

### Error: Package inputenc Error: Unicode character (U+2003) (inputenc) not set up for use with LaTeX.

__Extra details__: This occured when copying text over from a paper into a chapter. Unicode character (U+2003) is just whitespace.

__Solution__: Just re-entered the text part by part and re-built the thesis each time to check it worked.

### Unable to get references for word

__Solution__: Only knit to word + remove abstract, abbreviations, acknowledgements etc. from yaml header. __NOTE__: to knit to pdf, it requires these in the yaml header to be present! 
