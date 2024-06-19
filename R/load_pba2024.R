#' load_pba2024()
#'
#' Loads the PBA Tour 2024 player analysis from an excel file. Note that this data comes
#' from the year 2023.
#'
#' @return (the tibble)
#' @importFrom readxl read_excel
#' @export
load_pba2024 <- function() {
  file_path <- system.file("extdata", "PBATour2024_players.xlsx", package = "PBAData")
  dataset <- readxl::read_excel(file_path)
  return(dataset)
}
