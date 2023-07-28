library(rmarkdown)
library(purrr)

site_pages <- c("infrastructure-funds.Rmd",
                "recovery-funds.Rmd",
                "FAQ.Rmd",
                "glossary.Rmd",
                "index.Rmd")


# site_pages <- c("infrastructure-funds.Rmd", 
#                 "index.Rmd")

walk(site_pages, ~rmarkdown::render(.x, "html_document"))