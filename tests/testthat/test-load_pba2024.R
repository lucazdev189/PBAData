library(testthat)
library(PBAData)
library(tibble)

test_that("shows correct dataset", {
  PBA2024 <- load_pba2024()
  
  expect_true(is_tibble(PBA2024))
  
  columns <- c("Name", "Joined", "Events", "Titles", "Average", "Earnings")
  expect_true(all(columns %in% names(PBA2024)))
})
