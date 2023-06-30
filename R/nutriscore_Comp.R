#' Return results of NutriScore (versions before and after 2023)
#'
#' This function returns the NutriScore calculate with algorithm before and after 2023 modification.
#'
#' @param x The dataframe with the mandatory nutritional declaration
#' #'
#' @return The results of NutriScore (versions before and after 2023)
#' @export
#'
#' @examples \dontrun{
#' nutriscore_Comp(data)
#' }
#'
nutriscore_Comp <- function(x){
  res1 <- score_nut(x)
  res2 <- score_nut2023(x)

  return(list(Ancien = res1, Nouveau = res2))
}
