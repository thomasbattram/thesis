# PhD project meeting notes 2020-04-23

Attendees: Tom B, Gib, Tom G

Agenda:
- Update on all current projects
- Discussion of analysis plan for "properties of EWAS" chapter

## Update on all current projects

### EWAS Catalog
Lots of work on the EWAS Catalog recently, it's looking much better!  
Meeting 2020-04-24, but overall I think we're pretty close to finishing everything!

Things to sort out: 

* Getting it on shark server (Tom may need your help again) 
* Sending paper out 

Also, I've reformatted the ewas-catalog paper for my thesis, I just need to update it with the new features we'll add in. 

__NOTES__
* Could be port conflicts causing problems on shark server (specifically port 3306 on mysql server) - change in docker container.
* Could switch over to crashdown or another server if shark is still causing issues.


### Comparison of EWAS and GWAS

Main question of this project: could EWAS be providing extra biological information?  

Analysis for this is done and manuscript is written up. There is one result that Gib and I are going to discuss tomorrow (2020-04-24) and then hopefully soon I can send the manuscript to all of you. 

### Discussion of analysis plan for "properties of EWAS" chapter

See `analysis_plan.pdf`.

__NOTES__
* Don't just show top 10 cpgs or genes. Better to show a distribution -- would be nice to have a manhattan with cpgs on the x-axis and no. of traits the cpg is associated with at p<1x10^-7^ on the y-axis. 
* Would be better to look at r^2^ distribution rather than beta distribution
* GoDMC have CpG variability data available 
* Look at variance vs. effect size as well as methylation level vs. effect size
* Speak to Charlie about CpGs under selection, could be incorporated here
