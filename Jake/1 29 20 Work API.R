library(httr)
library(jsonlite)
## Get the api key from online
apiKey <- "	40ea8223ff9f8158db6d165f1dd35c30"
## This looks at our account?
result <- GET("https://favqs.com/api/",add_headers(Authorization = paste("Key", apiKey)))


## Favorites in FavQ's are what we'll be push/pulling through
pacman::p_load(httr,jsonlite,dplyr)
my_url <- paste0("https://favqs.com/?apikey=40ea8223ff9f8158db6d165f1dd35c30",Sys.getenv("favQ_key"))
raw_result <- httr::GET(my_url)

str(raw_result)
str(raw_result$content)

all_that_content <- httr::content(raw_result, as = 'text')
str(all_that_content)

## Change from HTML to jsonlite
json_content <- jsonlite::fromJSON(all_that_content,flatten = T)
dplyr::glimpse(json_content)

Collapse