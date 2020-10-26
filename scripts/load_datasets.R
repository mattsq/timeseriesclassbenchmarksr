library(stringr)
library(foreign)

data_files <- str_subset(dir("data/"), "arff")

safe_read_arff <- purrr::possibly(read.arff, otherwise = NULL, quiet = FALSE)

model_data <- map(paste0("data/",data_files), safe_read_arff)
names(model_data) <- data_files
model_data <- compact(model_data)

plot_through <- function(data) {
  plot(unlist(data[1,]), type = "l")
}

walk(model_data, plot_through)
