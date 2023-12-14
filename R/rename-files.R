# Rename files

folder <- "Y:\\NRAS\\Soil_Health_Initiative\\LogosBranding\\WaSHIPartnerLogos\\"

oldFiles <- list.files(folder)

newFiles <- tolower(gsub("_", "-", oldFiles))

file.rename(paste0(folder, oldFiles), paste0(folder, newFiles))
