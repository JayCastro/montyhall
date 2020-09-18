#' @title
#'    Open Goat Door
#' @description
#'    `open_goat_door`generates a goat door that is not behind your inital pick.
#' @details
#'     This opens a goat door but it will be a goat door not already seected and it will never open the car door.
#' @param ... game, a.pick
#'
#' @return The function returns a length 3 character vector
#'   indicating the positions of goats and the car.
#'
#' @examples
#'   open_goat_door()
#' @export
open_goat_door <- function( game, a.pick )
{
  doors <- c(1,2,3)
  # if contestant selected car,
  # randomly select one of two goats
  if( game[ a.pick ] == "car" )
  {
    goat.doors <- doors[ game != "car" ]
    opened.door <- sample( goat.doors, size=1 )
  }
  if( game[ a.pick ] == "goat" )
  {
    opened.door <- doors[ game != "car" & doors != a.pick ]
  }
  return( opened.door ) # number between 1 and 3
}
