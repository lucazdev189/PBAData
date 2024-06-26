library(PBAData)
library(dplyr)
library(tibble)

test_that("returns correct stuff", {
  pba <- load_pba2023()
  byscript <- above_avg(pba, "Anthony Simonsen", "Titles")
  
  manual_calc <- pba %>%
    filter(Name == "Anthony Simonsen") %>%
    select(Name, Titles)
  avg <- mean(pba$Titles, na.rm = TRUE)
  diff_fromavg <- round(manual_calc$Titles - avg, 2)
  manual_result <- paste("Anthony Simonsen", "is away from the avg by", diff_fromavg)
  
  expect_equal(byscript, manual_result)
})
