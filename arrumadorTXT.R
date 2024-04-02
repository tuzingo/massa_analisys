# Import Files, replace the "path" to the Path Obviously
cat("Welcome to the Data Importer V1.0! \n This scrit is used to get some txt files and put all of then into just one CSV File :)\n Enjoy this S2\n please, tell me where is the files that u want to organize")
filelist <- list.files(path = readline(), pattern = "\\.txt$", full.names = TRUE)

# Read data from each file
datalist <- lapply(filelist, function(x) read.delim(x, header = FALSE, quote = ",", sep = " "))

# Check column names
for (i in seq_along(datalist)) {
  print(paste("Column names for file", i, ":", colnames(datalist[[i]])))
}

# Combine data frames
combined_df <- do.call("rbind", datalist)

# Write to a CSV file
write.csv(combined_df, file = "data.csv", row.names = FALSE)

cat("All data was stored in : data.csv\n And now u can get some coffe or just initialize your analisys :D\n PS: This CSV is separeted by commas")

videogrammetry <- read.table("data.csv", header = FALSE, sep = ",")