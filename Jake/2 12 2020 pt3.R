library(httr)
library(jsonlite)
##
## Making a function so that queries can be easy to put in
library(httr)
fav_api <- function(path) {
  url <- modify_url("https://favqs.com/api", path = path)

  ## without the fromJSON function you'll get the custom error
  resp <- GET(url)
  resp <- fromJSON(url)
  if (http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  parsed <- jsonlite::fromJSON(content(resp, "text"), simplifyVector = FALSE)

  structure(
    list(
      content = parsed,
      path = path,
      response = resp
    ),
    class = "fav_api"
  )
}

print.fav_api <- function(x, ...) {
  cat("<FavQs ", x$path, ">\n", sep = "")
  str(x$content)
  invisible(x)
}
## Getting this error running this ever though qotd doesn't need authorization
# Error in simplify(obj, simplifyVector = simplifyVector, simplifyDataFrame = simplifyDataFrame,  :
#                     unused argument (as = text)
fav_api("/api/qotd")





############################################################
# Moved from api to bib -> tibble, still can't figure api out
# this package converts bib to tibble
library(bib2df)

