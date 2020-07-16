pacman::p_load(tidyverse, httr, usethis, glue, yaml)

## This will be the cannon API call-in
bob <- httr::GET(url = glue(main_url, THING = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}',
                                                  TOKEN = Sys.getenv("FAVQS_PAT"))))
content(bob)

## Stores the author and quote
quote <- ""
author <- ""
complete <- c(quote," - ",author)
diction <- list()


## This function will create a template for user quotes
## Right now we need a yaml
# Error in rmarkdown::draft("test.rmd", template = "/Users/jacob/Desktop/QuoteR/QuoteR/Jake") :
# No template.yaml file found for template '/Users/jacob/Desktop/QuoteR/QuoteR/Jake'
