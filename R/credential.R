# Making a username/password function to get info from API
# still might use some work
get_credentials <- function(){
  FAVQS_USERNAME <- readline(prompt = "What's your FavQs username?: ")
  FAVQS_PASSWORD <- readline(prompt = "What's your FavQs password?: ")
  FAVQS_API <- readline(prompt = "What's your FavQs API Key?: ")
  Sys.setenv("FAVQS_USERNAME" = str(FAVQS_USERNAME))
  Sys.setenv("FAVQS_PASSWORD" = str(FAVQS_PASSWORD))
  Sys.setenv("FAVQS_API" = FAVQS_API)
}
# Do we need API key?
# If these variables are in the system environment, we won't need to do return anything
# or this again.
