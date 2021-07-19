
##to build both a paged html version and a gitbook follow the steps below

#######################################################################################
##change your VErsion #
#######################################################################################

##we need to get our private data file moved over
file.copy('C:/scripts/fish_passage_2021_permit_app_elk/R/private_info.R', 'R/private_info.R')

##move the html to the docs folder so it can be viewed online
file.rename('application_moe.html', 'docs/index.html')
file.rename('application_moe.pdf', 'docs/application_moe.pdf')





