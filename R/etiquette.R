#' Edit dataframe with the mandatory nutritional declaration
#'
#' This function edits dataframe with the mandatory nutritional declaration.
#'
#' @param Energie Energy (in kJ/100g)
#' @param AGS Saturated fatty acids (in g/100g)
#' @param Sucres Sugar content  (in g/100g)
#' @param Sel Salt content  (in g/100g)
#' @param Proteines Protein content  (in g/100g)
#' @param Fibres Fiber content  (in g/100g)
#' @param FetL FL percent
#' @param Red_meat_product Boolean value if more 50 percent of red meat
#'
#' @return The nutritional score
#' @export
#'
#' @examples \dontrun{
#' score_nut(data)
#' }
#'
etiquette <- function(Energie = NULL,
                      AGS = NULL,
                      Sucres = NULL,
                      Sel = NULL,
                      Proteines = NULL,
                      Fibres = NULL,
                      FetL = NULL,
                      Red_meat_product = NULL){
  data <- data.frame(
    energie = Energie,
    ags = AGS,
    sucre = Sucres,
    sel = Sel,
    proteine = Proteines,
    fibre = Fibres,
    FL = FetL,
    red_meat_product = Red_meat_product
  )

  return(data)
}
