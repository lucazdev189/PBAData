#' player_summary()
#'
#' Summarizes the chosen player's stats using the chosen dataset.
#'
#' @param dataset The dataset used to get information.
#' @param player The player to be searched for.
#' @return Summarized player stats.
#' @importFrom dplyr filter summarize %>%
#' @export
player_summary <- function(dataset, player) {
  requested_player <- dplyr::filter(dataset, Name == player)
  
  # Prepare to conditionally include columns
  summarize_args <- list(
    name = player,
    average_score = round(requested_player$Average, digits = 2),
    total_earnings = requested_player$Earnings,
    aboveorbelow_avg = requested_player$Average - mean(dataset$Average)
  )
  
  # Check if 'Joined' column exists and add it if its true
  if ("Joined" %in% colnames(dataset)) {
    summarize_args$year_joined <- requested_player$Joined
  }
  
  # Check if 'Titles' column exists and add it if true
  if ("Titles" %in% colnames(dataset)) {
    summarize_args$titles <- requested_player$Titles
  }
  
  the_summary <- dplyr::summarize(requested_player, !!!summarize_args)
  
  return(the_summary)
}

