#' Return results of the nutritional score (versions after 2023)
#'
#' This function returns the nutritional score.
#'
#' @param x The dataframe
#' #'
#' @return The nutritional score
#' @export
#'
#' @examples \dontrun{
#' score_nut2023(data)
#' }
#'
score_nut2023 <- function(x){

  res = 0
  if(Compo_N2023(x) >= 11) { res <- Compo_N2023(x) - (fibre2023(x$fibre) + FL(x$FL))
  } else if(Compo_N2023(x) < 11) { res <- Compo_N2023(x) - Compo_P2023(x)
  }

  logo <- NA
  if(res >= 19) { logo <- "E"
  } else if(res >= 11) { logo <- "D"
  } else if(res >= 3) { logo <- "C"
  } else if(res >= 1) { logo <- "B"
  } else if(res <= 0) { logo <- "A"
  }

  return(c("Logo" = logo, "Score" = res))
}
