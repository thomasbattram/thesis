cd index/

Rscript -e "require(knitr); require(markdown); require(thesisdown); bookdown::render_book('index.Rmd', output_format = 'all')"