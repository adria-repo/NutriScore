#' Points assigned for sugars (version before 2023)
#'
#' @param x The content in sugars (in g/100g).
#'
#' @return The points assigned for sugars
#' @export
#'
#' @examples
#' sucre(5)
#'
sucre <- function(x){
  score <- 0
  if(x > 45) { score <- 10
  } else if(x > 40) { score <- 9
  } else if(x > 36) { score <- 8
  } else if(x > 31) { score <- 7
  } else if(x > 27) { score <- 6
  } else if(x > 22.5) { score <- 5
  } else if(x > 18) { score <- 4
  } else if(x > 13.5) { score <- 3
  } else if(x > 9) { score <- 2
  } else if(x > 4.5) { score <- 1
  } else if(x <= 4.5) { score <- 0
  }

  return(score)

}
