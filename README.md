
<!-- README.md is generated from README.Rmd. Please edit that file -->

# timeseriesclassbenchmarksr

<!-- badges: start -->

<!-- badges: end -->

This is me keeping track of the performance of various time series
classification benchmarks, like `tsforest` and `bagofpatternsr`.

``` r
read.csv("results/results.csv")
#>     X ArrowHead_TEST.arff BME_TEST.arff Coffee_TEST.arff
#> 1   1           0.7371429     1.0000000        0.9642857
#> 2   2           0.6857143     0.9733333        0.8928571
#> 3   3           0.6514286     0.7933333        1.0000000
#> 4   4           0.7028571     0.9533333        0.8928571
#> 5   5           0.7142857     0.9933333        0.9285714
#> 6   6           0.6628571     0.7533333        0.9642857
#> 7   7           0.7200000     0.7733333        0.8571429
#> 8   8           0.6857143     0.7866667        1.0000000
#> 9   9           0.7200000     0.9000000        0.9285714
#> 10 10           0.7028571     0.9533333        0.9642857
#> 11 11           0.6742857     0.7333333        0.9642857
#> 12 12           0.7657143     0.9533333        1.0000000
#> 13 13           0.7542857     0.8000000        0.9642857
#> 14 14           0.6971429     0.8466667        0.9642857
#> 15 15           0.7371429     0.9000000        1.0000000
#> 16 16           0.7200000     0.6533333        1.0000000
#> 17 17           0.7428571     0.8200000        0.9642857
#> 18 18           0.7485714     0.6400000        0.9642857
#> 19 19           0.6914286     0.7933333        0.9285714
#> 20 20           0.6742857     0.8933333        0.9285714
#>    DodgerLoopDay_TEST.arff DodgerLoopGame_TEST.arff DodgerLoopWeekend_TEST.arff
#> 1                       NA                       NA                          NA
#> 2                       NA                       NA                          NA
#> 3                       NA                       NA                          NA
#> 4                       NA                       NA                          NA
#> 5                       NA                       NA                          NA
#> 6                       NA                       NA                          NA
#> 7                       NA                       NA                          NA
#> 8                       NA                       NA                          NA
#> 9                       NA                       NA                          NA
#> 10                      NA                       NA                          NA
#> 11                      NA                       NA                          NA
#> 12                      NA                       NA                          NA
#> 13                      NA                       NA                          NA
#> 14                      NA                       NA                          NA
#> 15                      NA                       NA                          NA
#> 16                      NA                       NA                          NA
#> 17                      NA                       NA                          NA
#> 18                      NA                       NA                          NA
#> 19                      NA                       NA                          NA
#> 20                      NA                       NA                          NA
#>    GunPoint_TEST.arff ToeSegmentation1_TEST.arff UMD_TEST.arff Wine_TEST.arff
#> 1           0.9466667                  0.7105263     0.7638889      0.6296296
#> 2           0.9466667                  0.6622807     0.7708333      0.7037037
#> 3           0.9400000                  0.6754386     0.8263889      0.6481481
#> 4           0.9600000                  0.7280702     0.7708333      0.7037037
#> 5           0.9666667                  0.6842105     0.7916667      0.6666667
#> 6           0.9600000                  0.7192982     0.7708333      0.7962963
#> 7           0.9666667                  0.6403509     0.7361111      0.7222222
#> 8           0.9800000                  0.7149123     0.7638889      0.8518519
#> 9           0.9533333                  0.7631579     0.7361111      0.7592593
#> 10          0.9266667                  0.6491228     0.9861111      0.5925926
#> 11          0.9333333                  0.6535088     0.9305556      0.5925926
#> 12          0.9733333                  0.6929825     0.9722222      0.7407407
#> 13          0.9333333                  0.6491228     0.7569444      0.6296296
#> 14          0.9733333                  0.6710526     0.6736111      0.7777778
#> 15          0.9000000                  0.6535088     0.8333333      0.7222222
#> 16          0.9800000                  0.7017544     0.7569444      0.7407407
#> 17          0.9200000                  0.6798246     0.7361111      0.6851852
#> 18          0.9466667                  0.6798246     0.8194444      0.7407407
#> 19          0.9666667                  0.6403509     0.9583333      0.5740741
#> 20          0.9266667                  0.6140351     0.6250000      0.5370370
```
