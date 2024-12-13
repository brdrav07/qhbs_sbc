########################################################################################################################
######################################### SBC TRAINING SITE AUDITING ###################################################
########################################################################################################################

#$$$ Authored by Brodie Verrall
#$$$ Last updated: 2024-12-13

#$$$ This script audits sites based on an array of criteria for inclusion in SBC as training data
#TODO: ensure the latest site compilation has been generated and scored

#----------------------------------------------------------------------------------------------------------------------#
#------------------------------------------------ 1) Set up workspace -------------------------------------------------#
#----------------------------------------------------------------------------------------------------------------------#
# 1.1) Run renv/activate.R to set project environment
renv::activate()
rm(list=ls())
gc()

# 1.2) Install and load project library
packages <- c("dplyr", "tidyr", "stringr", "sf", "terra")
installed_packages <- rownames(installed.packages())
for (pkg in packages) {
  if (!pkg %in% installed_packages) {
    install.packages(pkg)
  }
}
lapply(packages, library, character.only = TRUE)