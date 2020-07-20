# Makes a RMD file with corresponding html and .md files. Need away to verify
# that there's only 1 RMD file within the file. Also should make a user friendly way to name
# rmd. First/last name? Simple name?
create_stash <- function(){
  #setwd("../QuoteR/R")
  # Prompts user to create the quote directory with their name
  name <- readline(prompt = "Enter your name: ")
  namermd <- paste0(name,".Rmd")
  # If there's already an RMD with the same name it will ignore it.
  # Make sure to set working directory
  while (file.exists(namermd)){
    print(cat(namermd," already exists, "))
    name <- readline(prompt = "Enter your name: ")
  }
  # Build's the Rmd within an original name
  stash <- rmarkdown::render(name,"html_document")
  return (stash)
}

