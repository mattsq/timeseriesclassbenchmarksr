library(purrr)

datasets <- c("ArrowHead",
              "BasicMotions", "BME", "Coffee",
              "ERing", "GunPoint", "ToeSegmentation1",
              "UMD", "Wine", "Car", "Earthquakes", "Lightning2",
              "Lightning7", "ItalyPowerDemand", "MoteStrain",
              "Plane", "SonyAIBORobotSurface1", "SonyAIBORobotSurface2")

download_and_extract <- function(dataset) {
  url <- paste0("http://www.timeseriesclassification.com/Downloads/",dataset,".zip")
  download_path <- paste0("data/",dataset,".zip")
  train_file <-  paste0(dataset,"_TRAIN.arff")
  test_file <-  paste0(dataset,"_TEST.arff")
  if (!file.exists(download_path)) download.file(url, destfile = download_path)
  if (!file.exists(train_file) & !file.exists(test_file)) unzip(download_path, files = c(train_file, test_file), exdir = "data")
}

map(datasets, download_and_extract)

