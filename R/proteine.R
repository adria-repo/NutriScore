#' Points assigned for protein (version before 2023)
#'
#' @param x The content in protein (in g/100g).
#'
#' @return The points assigned for protein
#' @export
#'
#' @examples
#' proteine(10)
#'
proteine <- function(x){
  score <- 0
  if(x > 8.0) { score <- 5
  } else if(x > 6.4) { score <- 4
  } else if(x > 4.8) { score <- 3
  } else if(x > 3.2) { score <- 2
  } else if(x > 1.6) { score <- 1
  } else if(x <= 1.6) { score <- 0
  }

  return(score)

}
