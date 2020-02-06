library(httr)
library(jsonlite)
?jsonlite
?httr

UserName <- "jakelikesrice"
Password <- "Evangel10n!"
API <- "https://favqs.com/api"
API_Sess <- "https://favqs.com/api/session"
POST(url = Input_Sess)
fromJSON(API_Sess)
fromJSON(text(POST(url = API_Sess, encode = "raw", body = Input_Sess)))

Input_Sess <-'{"user": {"User-Token":"466c0082a578614642e8a461ce08fd8e", "login": "jakelikesrice", "password": "Evangel10n"  }}'

jsoncars <- toJSON(mtcars, pretty = TRUE)
cat(jsoncars)

QuoteDay <- fromJSON("https://favqs.com/api/qotd")

?POST
GET(url = "https://favqs.com/api/users/jakelikesrice", as = "text")
work <- {Authorization: Token token="466c0082a578614642e8a461ce08fd8e"}
Hello <- "Content-Type: application/json"
