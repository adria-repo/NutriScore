#' Points assigned for salt (version after 2023)
#'
#' @param x The content in salt (in g/100g).
#'
#' @return The points assigned for salt
#' @export
#'
#' @examples
#' sel2023(500)
#'
sel2023 <- function(x){
  score <- 0
  if(x > 4) { score <- 20
  } else if(x > 3.8) { score <- 19
  } else if(x > 3.6) { score <- 18
  } else if(x > 3.4) { score <- 17
  } else if(x > 3.2) { score <- 16
  } else if(x > 3) { score <- 15
  } else if(x > 2.8) { score <- 14
  } else if(x > 2.6) { score <- 13
  } else if(x > 2.4) { score <- 12
  } else if(x > 2.2) { score <- 11
  } else if(x > 2) { score <- 10
  } else if(x > 1.8) { score <- 9
  } else if(x > 1.6) { score <- 8
  } else if(x > 1.4) { score <- 7
  } else if(x > 1.2) { score <- 6
  } else if(x > 1) { score <- 5
  } else if(x > 0.8) { score <- 4
  } else if(x > 0.6) { score <- 3
  } else if(x > 0.4) { score <- 2
  } else if(x > 0.2) { score <- 1
  } else if(x <= 0.2) { score <- 0
  }

  return(score)

}
