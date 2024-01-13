## Header ======================================================================
##
## Script name: rename-files.R
##
## Purpose: Rename folders and files in bulk.
##
## Author: Jadey Ryan
##
## Email: jryan@agr.wa.gov
##
## Date created: 2024-01-10
##
## Notes:
##

# Attach packages ==============================================================

library(snakecase)
library(stringr)

# Rename files =================================================================

# Set folder. Remember the / at the end of the path.
folder <- "Y:/NRAS/soil-health-initiative/state-of-the-soils/_complete-dataset/archive/"

# Run this to change folder names
old_files <- list.files(folder)

# Or run this to change file names
old_files <- list.files(folder, recursive = TRUE)

# Simpler replacement of just lowercase and spaces to hyphens
new_files <- tolower(gsub(" ", "-", old_files))

# Replace specific text
new_files <- str_replace_all(old_files, "dpi", "-dpi")

# More complex rules for converting to kebab-case
new_files <- to_snake_case(
  old_files,
  sep_out = "-",
  sep_in = " |,|#",
  numerals = "asis",
  abbreviations = c("WSDA", "NRAS", "DMNP", "GWMA", "WSU", "STAR", "WaSHI", "SCBG", "LTARES", "SHI", "USDA", "NRCS", "CD", "WACD", "RData", "SoilTest", "WaCSE", "JR", "QC", "GHG")
) |>
  str_replace_all("wa-shi", "washi") |>
  str_replace_all("soil-test", "soiltest") |>
  str_replace_all("wa-cse", "wacse") |>
  str_replace_all("r-data", "rdata") |>
  str_replace_all("i-ds", "id") |>
  str_replace_all(".cd", "-cd") |>
  str_replace_all("-sample-ids", "_sample-ids") |>
  str_replace_all("2022-", "2022_") |>
  str_replace_all("-v", "_v")
# str_replace_all("cd-s", "cd")
# str_replace_all("etal2023", "-et-al") |>
# str_replace_all("([0-9])-|-(?=[0-9])", "//1_")

new_files

# Actually renames the files
file.rename(paste0(folder, old_files), paste0(folder, new_files))

