#' Points assigned for favourable elements of the nutritional score (version after 2023)
#'
#' @param x The data frame with for favourable elements of the nutritional score.
#'
#' @return The points assigned for favourable elements of the nutritional score
#' @export
#'
#' @examples \dontrun{
#' Compo_P2023(data)
#' }
#'
Compo_P2023 <- function(x){

  Prot <- NA
  if(x$red_meat_product %in% "Yes") { if(proteine2023(x$proteine) > 2) {Prot = 2
  } else if(proteine2023(x$proteine) <= 2) {Prot = proteine2023(x$proteine)}
  } else if(x$red_meat_product %in% "No") {Prot = proteine2023(x$proteine)
  }

  res <- FL(x$FL) +
    fibre2023(x$fibre) +
    Prot

  return(res)
}
