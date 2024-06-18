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
  the_summary <- requested_player %>%
    dplyr::summarize(
      name = Name,
      average_score = round(Average, digits = 2),
      total_earnings = Earnings,
      year_joined = Joined,
      titles = Titles,
      aboveorbelow_avg = Average - mean(dataset$Average)
    )
  return(the_summary)
}
