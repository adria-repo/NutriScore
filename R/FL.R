#' Points assigned for fruits and vegetables
#'
#' @param x The content in fruits and vegetables (in percent).
#'
#' @return The points assigned for fruits and vegetables
#' @export
#'
#' @examples
#' FL(50)
#'
FL <- function(x){
  score <- 0
  if(x > 80) { score <- 5
  } else if(x > 60) { score <- 2
  } else if(x > 40) { score <- 1
  } else if(x <= 40) { score <- 0
  }

  return(score)

}
