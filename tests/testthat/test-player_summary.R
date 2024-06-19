library(testthat)
library(tibble)
library(PBAData)

test_that("summarizes player stats correctly", {
  PBA2024 <- load_pba2024()
  name <- "Anthony Simonsen"
  
  a_simo <- player_summary(PBA2024, name)
  expect_true(a_simo$titles == 2)
  expect_true(a_simo$name == "Anthony Simonsen")
})