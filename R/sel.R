#' Points assigned for salt (version before 2023)
#'
#' @param x The content in salt (in g/100g).
#'
#' @return The points assigned for salt
#' @export
#'
#' @examples
#' sel(500)
#'
sel <- function(x){
  xx <- x * 1000 / 2.5
  score <- 0
  if(xx > 900) { score <- 10
  } else if(xx > 810) { score <- 9
  } else if(xx > 720) { score <- 8
  } else if(xx > 630) { score <- 7
  } else if(xx > 540) { score <- 6
  } else if(xx > 450) { score <- 5
  } else if(xx > 360) { score <- 4
  } else if(xx > 270) { score <- 3
  } else if(xx > 180) { score <- 2
  } else if(xx > 90) { score <- 1
  } else if(xx <= 90) { score <- 0
  }

  return(score)

}
