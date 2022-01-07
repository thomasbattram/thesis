# PhD project meeting notes 2021-10-19

Attendees: Tom B, Gib

## Agenda

* [properties of ewas analyses](#item1) 
* [AOB](#aob)

## Properties of ewas analyses <a name="item1"></a>

Expected replication:

We have Beta, SE, P, N in discovery and N in replication

Can estimate whether the sample size in replication is high enough to be able to detect an effect (assuming the effect + SD are the same in the replication). Could also check the sample size is high enough to detect an effect if the true effect is actually at the lower end of the CI.

This would give us X expected replications across the studies and I'd just do a binomial test to see if the actual replications are as great or greater than the expected replications? 

See code Gib sent! -- will need to remember that the replication study won't always contain CpG. So need to extract the replication P value (i.e. the highest P-value from the study) from the results.


How many axes of phenotypic space does CpG associate with? 
450,000 CpGs by 2000 traits matrix - any cells where data is missing can be set to 0.

Taking PCs - means each PC will have cluster of traits. 
Could do z-scores instead of betas
Will be able to tell which traits contribute high and which contribute low to each thing of a PC



[Last report](prop-ewas-results.html) for reference.

__NOTES:__

Some meeting notes

## AOB <a name="aob"></a>

* ewas-gwas comparison paper - realised I need Tom + Nic to reply as I don't have their funding info...