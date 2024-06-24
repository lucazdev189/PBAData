#' scatterplot_average()
#' 
#' Scatterplots the average of the player against a chosen factor (earnings by default)
#' 
#' @param dataset Dataset to be used to get info.
#' @param y_axis The y axis values to be plotted.
#' @param linear_regression Adds a linear regression line. Set to FALSE by default.
#' @param lregression_method Method used to do the linear regression line. Set to lm by default
#' @importFrom rlang ::
#' @importFrom ggplot2 ggplot geom_point geom_smooth
#' @importFrom ggthemes theme_excel
#' @export
scatterplot_average <- function(dataset, y_axis="Earnings", linear_regression=FALSE, lregression_method="lm") {
  
  # Scatterplots the given x and y values without the linear regression
  plot <- ggplot2::ggplot(data=dataset, aes(x=Average, y=!!sym(y_axis))) +
    ggplot2::geom_point() +
    ggthemes::theme_excel()
  
  # Adds the linear regression line
  if(linear_regression) {
    plot <- plot + ggplot2::geom_smooth(method=lregression_method)
  }
  
  # Returns the final plot
  return(plot)
}