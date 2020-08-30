# useful functions - mainly for tidying data

new_load <- function(file) 
{
    temp_space <- new.env()
    var <- load(file, temp_space)
    out <- get(var, temp_space)
    rm(temp_space)
    return(out)
}

comma <- function(x) format(x, digits = 2, big.mark = ",")

tidy_nums <- function(df) 
{
    df[] <- lapply(df, comma)
    return(df)
}

tidy_colnames <- function(df) 
{
    colnames(df) <- gsub("_", "-", colnames(df))
    return(df)
}

num_to_text <- function(x, start_of_sentence = FALSE)
{
    if (!x%%1 == 0) warning("X is not an integer")
    if (start_of_sentence) {
    	out <- numbers_to_words(x)
    	out <- stringr::str_to_sentence(out)
    } else {
	    if (x < 11 & x > -1) {
	        out <- numbers_to_words(x)
	    } else {
	        out <- x
	    }
    }
    return(out)
}