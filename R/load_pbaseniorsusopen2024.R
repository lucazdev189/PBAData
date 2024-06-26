#' load_pbaseniorusopen2024()
#'
#' Loads the PBA Senior US Open 2024 final standing results from an excel file.
#'
#' @return (the tibble)
#' @importFrom readxl read_excel
#' @export
# This dataset is licensed under a Creative Commons Attribution 4.0 International License. It is sourced from publicly available information provided by the Professional Bowlers Association (PBA) website (https://www.pba.com). 
# The PBA does not endorse this dataset, and the accuracy or completeness of the data cannot be guaranteed. Users should verify the data against the original source for critical applications.

load_pbaseniorusopen2024 <- function() {
  file_path <- system.file("extdata", "PBASeniorUSOpen2024_finalstandings.xlsx", package = "PBAData")
  dataset <- readxl::read_excel(file_path)
  return(dataset)
}
