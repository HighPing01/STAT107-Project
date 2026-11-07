# STAT107-Project


List of files (half-way point):

# 00_Requirements.R: installs rmarkdown, knitr, tinytext to be used in our analysis.
Sourced into the main rmd document
# 01_funct_DataCleaning.R: functions, one that converts height to centimeters
# 02_funct_DataCleaning_filterelitescorers: filters the csv file and  separates the "elite scorers".
# CSV files (23_24.csv, 23_24Height.csv, 24_25.csv, 24_25Height.csv, 25/26.csv,
25/26Height.csv, 26/27.csv) are our data files with general nba data like name, height, ppg, etc.
#11_DataCleaning.R -> processes csv files and parses through them to setup for graphing
#12_DataSaving.RData -> saves environment to be loaded in visualization rmd
# STAT107_Project.RMD: our main file which encases our code and preliminary analysis. 
# FinalReport.RMD: our report file that includes our knitted report with title, abstract, and other stuff.
# FinalReport.pdf: report file in pdf format  


# Step by Step Instructions
1. 00_Requirements.R -> importants packages and loads libraries
2. 01_funct_DataCleaning.R: loads function that converts height to centimeters
3. 02_funct_DataCleaning_filterelitescorers.R: loads function that filters elite scorers
4. 11_DataCleaning.R -> processes csv files and parses through them to setup for graphing
5. Stat107_Project.RMD: run by pressing "run current chunk" in every chunk