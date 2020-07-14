  [![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)


## quoteR R package

This is just a place holder for a quote management package that I would like to build.  Here are the objectives

1. Handle `.bib` files and be able to move to `tibbles`.  Probably will use functions from the `bib2df` package.
2. Look at using the [goodreads.com api](https://www.goodreads.com/api) or [FavQs](https://favqs.com/) website has [an API](https://favqs.com/api) to manage quotes.
3. Store quotes and reviews in markdown files that can be referenced.
4. Build a tibble format that stores book information, quotes, and reviews a user has written.
5. Provide a function that builds the markdown quote with link to reference as an inline or main quote.
6. Provide a way to for a user to use quotes from tibble (or goodreads) in their writing in an `.md` or most likely the `.Rmd`.
7. A function that searches through a blog's `.md` and `.Rmd` files to build a summary of how often quotes have been used or books have been cited.

## favQs Website

The [FavQs](https://favqs.com/) website has [an API](https://favqs.com/api).  It looks like it will let me push and pull quotes. Private quote management is only $5.99 a year and they use stripe to manage payments.

### API Guidance

https://cran.r-project.org/web/packages/httr/vignettes/api-packages.html


Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

### Trello

[This site](https://trello.com/b/6szU3XhH/quoter) will keep track of tasks completed/need to be done.
