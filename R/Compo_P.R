#' Points assigned for favourable elements of the nutritional score (version before 2023)
#'
#' @param x The data frame with for favourable elements of the nutritional score.
#'
#' @return The points assigned for favourable elements of the nutritional score
#' @export
#'
#' @examples \dontrun{
#' Compo_P(data)
#' }
#'
Compo_P <- function(x){
  res <- FL(x$FL) +
    fibre(x$fibre) +
    proteine(x$proteine)

  return(res)
}
