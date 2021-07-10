##this is for as we work through
# preview_chapter('index.Rmd')
# preview_chapter('0300-method.Rmd')
# preview_chapter('0400-results.Rmd')
# preview_chapter('0200-background.Rmd')

preview_chapter('0100-intro.Rmd')
preview_chapter('0200-background.Rmd')
preview_chapter('0300-method.Rmd')
preview_chapter('0400-results.Rmd')
preview_chapter('0600-appendix.Rmd')
preview_chapter('index.Rmd')
##this is how we clean up our bib file.  We need to find a way to add together the packages.bib file with the book.bib file first though.
# citr::tidy_bib_file(
#   rmd_file = "Elk-River-Fish-Passage-2020.Rmd",
#   messy_bibliography = 'book.bib',
#   file = 'book_tidy.bib')

##we also need to change all the date header to year in the bib file so that it can be run by our pdf maker
##i did this by hand last time but would be good to automate!!!




##to build both a paged html version and a gitbook follow the steps below

#######################################################################################
##change your VErsion #
#######################################################################################

#######################################################################################
##if you have changed your bcfishpass model outputs by saving to sqlite with 0282-extract-bcfishpass2...
##you also need to make new html tables to link to in the leaflet map  use 0355-tables-reporting-html.R
########################################################################################


##move the phase 1 appendix out of the main directory to a backup file
# {file.rename('0600-appendix.Rmd', 'data/0600-appendix.Rmd')

#################################################################################################
##go to the index.Rmd and change gitbook_on <- FALSE
#################################################################################################

##   then make our printable pdf
rmarkdown::render_site(output_format = 'pagedown::html_paged',
                       encoding = 'UTF-8')
##  move it to the docs folder so that it can be seen by the download button
file.rename('Report.html', 'docs/Tributaries to Revelstoke Lake Fisheries Assessments.html')

##now we need to print the docs/Elk.html file to Elk.pdf with chrome.  We should automate this step.  Do in browser for now
openHTML('docs/Tributaries to Revelstoke Lake Fisheries Assessments.html')

##move the phase 1 appendix back to main directory
# file.rename('data/0600-appendix.Rmd', '0600-appendix.Rmd')




##this is how we clean up our bib file.  We need to find a way to add together the packages.bib file with the book.bib file first though.
# citr::tidy_bib_file(
#   rmd_file = "Elk-River-Fish-Passage-2020.Rmd",
#   messy_bibliography = 'book.bib',
#   file = 'book_tidy.bib')

##we also need to change all the date header to year in the bib file so that it can be run by our pdf maker
##i did this by hand last time but would be good to automate!!!

##  make the site
# source('R/photos-extract-metadata.R') ##if you added new photos
# source('R/0355-tables-reporting-html.R')  #if you changed the modelling outputs


#################################################################################################
##go to the index.Rmd and change gitbook_on <- TRUE
#################################################################################################

rmarkdown::render_site(output_format = 'bookdown::gitbook',
                       encoding = 'UTF-8')




