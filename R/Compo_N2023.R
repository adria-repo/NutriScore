#' Points assigned for unfavourable elements of the nutritional score (version after 2023)
#'
#' @param x The data frame with for unfavourable elements of the nutritional score.
#'
#' @return The points assigned for unfavourable elements of the nutritional score
#' @export
#'
#' @examples \dontrun{
#' Compo_N2023(data)
#' }
#'
Compo_N2023 <- function(x){
  res <- energie(x$energie) +
    sucre2023(x$sucre) +
    ags(x$ags) +
    sel2023(x$sel)

  return(res)
}
