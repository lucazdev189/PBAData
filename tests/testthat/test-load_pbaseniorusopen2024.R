library(testthat)
library(PBAData)
library(tibble)

test_that("shows correct dataset", {
  PBAS <- load_pbaseniorusopen2024()
  
  expect_true(is_tibble(PBAS))
  
  columns <- c("Name", "Scratch", "Bonus", "Total", "Average", "+/-", "Games", "Points", "Earnings")
  expect_true(all(columns %in% names(PBAS)))
})