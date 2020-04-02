message("Searching for folder 'UCI HAR Dataset' in the working directory...")

if (!dir.exists("UCI HAR Dataset")) {
      message("    ...no folder with name 'UCI HAR Dataset'",
              " exists in the working directory.")
      
      message("Trying to download the zipped file...")
      data_url = paste0("https://d396qusza40orc.cloudfront.net/",
                        "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
      download.file(data_url, "data.zip")
      message("    ...zipped data was downloaded successfully ",
              " in the working directory as 'data.zip'.")
      log_entry_url <- paste0("Data was downloaded from the url: ", data_url)
      log_entry_date <- paste0("Data was downloaded at date: " , date())
      
      log_con <- file("log.txt")
      writeLines(c(log_entry_url, log_entry_date), log_con)
      close(log_con)
      
      message("A file was created as 'log.txt' at the working directory \n",
              "which stores the url and the date, \n",
              "from which zipped data files where downloaded.")
      message("Trying to extract files from the 'data.zip'",
              "in the working directory...")
      unzip("data.zip")
      message("    ...data files extracted successfully, in the folder \n",
              "       with name 'UCI HAR Dataset' in the working directory.")
      
      
} else {
      message("    ...data files are available, in the folder \n",
              "       with name 'UCI HAR Dataset' in the working directory.")
}
