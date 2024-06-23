library(ggplot2)
library(ggthemes)
library(PBAData)

test_that("basic functionality", {
  sample_data <- data.frame(Average = c(1, 2, 3, 4, 5), Earnings = c(10, 15, 20, 25, 30))
  plot <- scatterplot_average(sample_data)
  expect_s3_class(plot, "ggplot")
  expect_equal(length(plot$layers), 1)
})