pacman::p_load(tidyverse, httr, usethis, glue)

## This takes you to the r environment where you can set system variables
usethis::edit_r_environ()

Sys.getenv("FAVQS_PAT")

Authorization: Token token="YOUR_APP_TOKEN"

## Tested if the environment worked
FAVQS_PAT # API Key
FAVQS_USER
FAVQS_LOGIN

# FAVQS is finicky and not supported anymore so Tyler Klinger got help
# from J. Hathaway to get info
mything = list(login = Sys.getenv("FAVQS_USER"),
               password = Sys.getenv("FAVQS_LOGIN"))

# This gets the raw data,
httr::GET(url = glue("https://favqs.com/api/{THING}", THING = "quote"))

# https://favqs.com/api/activities/?type=user&filter=gose
# Authorization: Token token="YOUR_APP_TOKEN"

main_url = "https://favqs.com/api/{THING}"

# Gets raw data with sections. Use bob$...
bob1 <- httr::GET(url = glue(main_url, THING = "activities/?type=user&filter=gose"),
                 add_headers(Authorization =
                               glue('Token token={TOKEN}', TOKEN = Sys.getenv("FAVQS_PAT"))))

## Gets All quotes
content(bob)

# raw code for quotes
rawToChar(bob$content)



bob2 <- httr::GET(url = glue(main_url, THING = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}', TOKEN = Sys.getenv("FAVQS_PAT"))))


bob3 <- httr::GET(url = glue(main_url, THING = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}',
                                                  TOKEN = Sys.getenv("FAVQS_PAT"))),
                 params = list(page = 2))

# Gets a huge glob of quotes
rawToChar(bob$content)
# Gets lines of something
(payload <- content(bob))
