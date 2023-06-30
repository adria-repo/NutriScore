#' Return results of the nutritional score (versions before 2023)
#'
#' This function returns the nutritional score.
#'
#' @param x The dataframe
#' #'
#' @return The nutritional score
#' @export
#'
#' @examples \dontrun{
#' score_nut(data)
#' }
#'
score_nut <- function(x){

  res = 0
  if(Compo_N(x) >= 11 & FL(x$FL) >= 5) { res <- Compo_N(x) - Compo_P(x)
  } else  if(Compo_N(x) >= 11 & FL(x$FL) < 5) { res <- Compo_N(x) - (fibre(x$fibre) + FL(x$FL))
  } else if(Compo_N(x) < 11) { res <- Compo_N(x) - Compo_P(x)
  }

  logo <- NA
  if(res >= 19) { logo <- "E"
  } else if(res >= 11) { logo <- "D"
  } else if(res >= 3) { logo <- "C"
  } else if(res >= 0) { logo <- "B"
  } else if(res <= -1) { logo <- "A"
  }

  return(c("Logo" = logo, "Score" = res))
}
