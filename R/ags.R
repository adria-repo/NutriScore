#' Points assigned for saturated fatty acids
#'
#' @param x The content in saturated fatty acids (in g/100g).
#'
#' @return The points assigned for saturated fatty acids
#' @export
#'
#' @examples
#' ags(5)
#'
ags <- function(x){
  score <- 0
  if(x > 10) { score <- 10
  } else if(x > 9) { score <- 9
  } else if(x > 8) { score <- 8
  } else if(x > 7) { score <- 7
  } else if(x > 6) { score <- 6
  } else if(x > 5) { score <- 5
  } else if(x > 4) { score <- 4
  } else if(x > 3) { score <- 3
  } else if(x > 2) { score <- 2
  } else if(x > 1) { score <- 1
  } else if(x <= 1) { score <- 0
  }

  return(score)

}
