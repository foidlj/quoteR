pacman::p_load(tidyverse, httr, usethis, glue)

#usethis::edit_r_environ()

Sys.getenv("FAVQS_PAT")

Authorization: Token token="YOUR_APP_TOKEN"


FAVQS_PAT
FAVQS_USER
FAVQS_LOGIN

mything = list(login = Sys.getenv("FAVQS_USER"),
               password = Sys.getenv("FAVQS_LOGIN"))

# httr::POST(url = glue("https://favqs.com/api/{THING}", THING = "session"),
#            authenticate(Sys.getenv("FAVQS_USER"), Sys.getenv("FAVQS_LOGIN")),
#            type = "basic")
#
# httr::POST(url = glue("https://favqs.com/api/{THING}", THING = "session"),
#            body = mything)
#
#
httr::GET(url = glue("https://favqs.com/api/{THING}", THING = "quote"))

# https://favqs.com/api/activities/?type=user&filter=gose
# Authorization: Token token="YOUR_APP_TOKEN"

main_url = "https://favqs.com/api/{THING}"

bob <- httr::GET(url = glue(main_url, THING = "activities/?type=user&filter=gose"),
                 add_headers(Authorization =
                               glue('Token token={TOKEN}', TOKEN = Sys.getenv("FAVQS_PAT"))))
## All quotes
content(bob)

rawToChar(bob$content)



bob <- httr::GET(url = glue(main_url, THING = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}', TOKEN = Sys.getenv("FAVQS_PAT"))))


bob <- httr::GET(url = glue(main_url, THING = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}',
                                                  TOKEN = Sys.getenv("FAVQS_PAT"))),
                 params = list(page = 2))

rawToChar(bob$content)
(payload <- content(bob))
