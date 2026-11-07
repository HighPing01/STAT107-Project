# 02_funct_DataCleaning_filterelitescorers.R


filter_elite <- function(data, ppg_col = "PTS", threshold = 25) {
  out <- data[data[[ppg_col]] >= threshold, ]
  out[order(-out[[ppg_col]]), ]
}
