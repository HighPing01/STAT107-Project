# 01_funct_DataCleaning.R

height_to_cm <- function(heights) {
  parts  <- strsplit(heights, "-")
  feet   <- as.numeric(sapply(parts, `[`, 1))
  inches <- as.numeric(sapply(parts, `[`, 2))
  round((feet * 12 + inches) * 2.54, 1)
}


filter_elite <- function(data, ppg_col = "PTS", threshold = 25) {
  out <- data[data[[ppg_col]] >= threshold, ]
  out[order(-out[[ppg_col]]), ]
}