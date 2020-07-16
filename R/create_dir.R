# Makes a RMD file with corresponding html and .md files. Need away to verify
# that there's only 1 RMD file within the file. Also should make a user friendly way to name
# rmd. First/last name? Simple name?
create_dir <- function(){
  # Prompts user to create the quote directory with their name
  name <- readline(prompt = "Enter your name: ")
  # If there's already an RMD with the same name it will ignore it.
  while (file.exists(name.Rmd)){
    print(cat(name,".Rmd already exists"))
    name <- readline(prompt = "Enter your name: ")
  }
  else
    #
    stash <- rmarkdown::render(name,"html_document")
    return (stash)
}
