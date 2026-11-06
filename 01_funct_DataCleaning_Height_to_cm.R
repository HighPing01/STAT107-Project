# 01_funct_DataCleaning.R

height_to_cm <- function(heights) {
  parts  <- strsplit(heights, "-")
  feet   <- as.numeric(sapply(parts, `[`, 1))
  inches <- as.numeric(sapply(parts, `[`, 2))
  round((feet * 12 + inches) * 2.54, 1)
}

#Prepare data
stat_data$PLAYER <- toupper(trimws(stat_data$PLAYER))
general_data$PLAYER <- toupper(trimws(general_data$PLAYER))

df <- merge(stat_data, general_data[, c("PLAYER","HEIGHT")], by="PLAYER")

# Convert height like "7-4" to inches
df$HT <- sapply(strsplit(as.character(df$HEIGHT), "-"), function(x)
  as.numeric(x[1])*12 + as.numeric(x[2]))

df <- df[df$GP >= 20 & !is.na(df$HT), ]