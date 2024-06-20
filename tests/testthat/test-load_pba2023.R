library(testthat)
library(PBAData)
library(tibble)

test_that("shows correct dataset", {
  PBA2023 <- load_pba2023()
  
  expect_true(is_tibble(PBA2023))
  
  columns <- c("Name", "Joined", "Events", "Titles", "Average", "Earnings")
  expect_true(all(columns %in% names(PBA2023)))
})
