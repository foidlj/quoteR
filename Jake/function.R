bob <- httr::GET(url = glue(main_url, THING = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}',
                                                  TOKEN = Sys.getenv("FAVQS_PAT"))))
content(bob)

## Stores the author and quote
author <- ""
quote <- ""
complete <- c("'"quote"' ","'-"author"'")
diction <- list()

## Practice function
jake <- function():
  for line in bob:
    paste("The year is", year))
