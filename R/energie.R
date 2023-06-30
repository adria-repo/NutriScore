#' Points assigned for energy density
#'
#' @param x The energy density (in kJ/100g).
#'
#' @return The points assigned for energy density
#' @export
#'
#' @examples
#' energie(1000)
#'
energie <- function(x){
  score <- 0
  if(x > 3350) { score <- 10
  } else if(x > 3015) { score <- 9
  } else if(x > 2680) { score <- 8
  } else if(x > 2345) { score <- 7
  } else if(x > 2010) { score <- 6
  } else if(x > 1675) { score <- 5
  } else if(x > 1340) { score <- 4
  } else if(x > 1005) { score <- 3
  } else if(x > 670) { score <- 2
  } else if(x > 335) { score <- 1
  } else if(x <= 335) { score <- 0
  }

  return(score)

}
