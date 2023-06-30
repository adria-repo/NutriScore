#' Points assigned for protein (version after 2023)
#'
#' @param x The content in protein (in g/100g).
#'
#' @return The points assigned for protein
#' @export
#'
#' @examples
#' proteine2023(10)
#'
proteine2023 <- function(x){
  score <- 0
  if(x > 17) { score <- 7
  } else if(x > 14) { score <- 6
  } else if(x > 12) { score <- 5
  } else if(x > 9.6) { score <- 4
  } else if(x > 7.2) { score <- 3
  } else if(x > 4.8) { score <- 2
  } else if(x > 2.4) { score <- 1
  } else if(x <= 2.4) { score <- 0
  }

  return(score)

}
