#' Points assigned for unfavourable elements of the nutritional score (version before 2023)
#'
#' @param x The data frame with for unfavourable elements of the nutritional score.
#'
#' @return The points assigned for unfavourable elements of the nutritional score
#' @export
#'
#' @examples \dontrun{
#' Compo_N(data)
#' }
#'
Compo_N <- function(x){
  res <- energie(x$energie) +
    sucre(x$sucre) +
    ags(x$ags) +
    sel(x$sel)

  return(res)
}
