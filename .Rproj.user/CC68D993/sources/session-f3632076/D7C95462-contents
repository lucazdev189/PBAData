#' loads the PBA Tour 2024 player analysis from an excel file
#'
#' using readxl
#'
#' @return Loads the PBA Tour 2024 dataset.
#' @importFrom readxl read_excel
#' @export
load_dataset <- function() {
  file_path <- system.file("extdata", "PBATour2024_players.xlsx", package = "PBAData")
  dataset <- readxl::read_excel(file_path)
  return(dataset)
}
