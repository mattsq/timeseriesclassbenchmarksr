library(purrr)

datasets <- c("ArrowHead",
              "BasicMotions", "BME", "Coffee",
              "ERing", "GunPoint", "ToeSegmentation1",
              "UMD", "Wine")

download_and_extract <- function(dataset) {
  url <- paste0("http://www.timeseriesclassification.com/Downloads/",dataset,".zip")
  download_path <- paste0("data/",dataset,".zip")
  train_file <-  paste0(dataset,"_TRAIN.arff")
  test_file <-  paste0(dataset,"_TEST.arff")
  download.file(url, destfile = download_path)
  unzip(download_path, files = c(train_file, test_file), exdir = "data")
}

map(datasets, download_and_extract)

