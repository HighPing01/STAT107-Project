# 01_funct_DataCleaning.R
# Functions for cleaning and filtering the NBA data.

# Convert a feet-inches string to centimeters.
# Input:  heights - character vector like "6-11" or "7-0"
# Output: numeric vector of heights in cm
height_to_cm <- function(heights) {
  parts  <- strsplit(heights, "-")
  feet   <- as.numeric(sapply(parts, `[`, 1))
  inches <- as.numeric(sapply(parts, `[`, 2))
  round((feet * 12 + inches) * 2.54, 1)
}

# Keep players at or above a PPG cutoff, sorted highest first.
# Inputs: data      - data frame
#         ppg_col   - name of the PPG column (default "PTS")
#         threshold - minimum PPG (default 25)
# Output: filtered data frame
filter_elite <- function(data, ppg_col = "PTS", threshold = 25) {
  out <- data[data[[ppg_col]] >= threshold, ]
  out[order(-out[[ppg_col]]), ]
}