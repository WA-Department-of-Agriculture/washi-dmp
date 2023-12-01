# Rename files following style guide

library(stringr)

folder <- "Y:\\NRAS\\Soil_Health_Initiative\\LogosBranding\\LTAREs\\"

from_files <- list.files(folder)

# make everything lower case
to_files <- tolower(from_files)

# replace spaces with underscore
to_files <- str_replace_all(to_files, " ", "_")

# replace hyphens with underscore
to_files <- str_replace_all(to_files, "-", "_")

# replace soil_health with washi
to_files <- str_replace_all(to_files, "soil_health", "washi")

file.rename(paste0(folder, from_files), paste0(folder, to_files))

