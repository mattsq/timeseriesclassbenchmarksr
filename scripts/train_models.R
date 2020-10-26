library(tsforest)
library(tidyr)
library(ggplot2)

train_datasets <- str_subset(names(model_data), "TRAIN")
test_datasets <- str_subset(names(model_data), "TEST")

return_tsforest_accuracy <- function(train, test, data_list) {
  cat(paste0("Training on ", train,"\n"))
  train <- data_list[[train]]
  test <- data_list[[test]]
  model <- tsforest(train, verbose = FALSE)
  test_pred <- predict(model, test, verbose = FALSE)
  return(mean(test_pred$predictions == test$target))
}

safe_return_tsforest_accuracy <- possibly(return_tsforest_accuracy,
                                          otherwise = NA_real_,
                                          quiet = FALSE)


iterate_results <- replicate(20, expr = {
  cat("Next iteration...\n")
  results <- map2_dbl(train_datasets, test_datasets, ~ safe_return_tsforest_accuracy(.x, .y, model_data))
  names(results) <- test_datasets
  return(results)
})

results_df <- as.data.frame(t(iterate_results))

results_long <- pivot_longer(results_df,
                             cols = everything(),
                             names_to = "Benchmark",
                             values_to = "Accuracy")

ggplot(results_long, aes(Benchmark, Accuracy)) +
    geom_jitter() + geom_violin(alpha = .1) + coord_flip()

write.csv(results_df, "results/results.csv")

