#' above_avg()
#' 
#' Tells you how far the chosen player's factor is from the factor's average
#' 
#' @param dataset Dataset to be used to get data.
#' @param player Player to be analyzed.
#' @param chfactor Chosen factor to be compared.
#' @importFrom dplyr filter select %>%
#' @return How far the player is from the avg by negative/positive numbers.
#' @export
above_avg <- function(dataset, player, chfactor) {
  chfactor_col <- rlang::sym(chfactor)
  df_wplayer <- dataset %>%
    dplyr::filter(Name == player) %>%
    dplyr::select(Name, chfactor = !!rlang::sym(chfactor_col))
  avg <- mean(dataset[[chfactor]], na.rm=TRUE)
  distance_from_avg <- round(df_wplayer$chfactor - avg, 2)
  return(paste(player, "is away from the avg by", distance_from_avg))
}