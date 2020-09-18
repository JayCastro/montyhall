#' @title
#'  Change Door
#' @description
#'  `change_door` switches your inital door
#' @details
#'    This function switches your door to the sny of the random doors not already
#'    selected or the opened goat door
#' @param ...
#'    stay=T, opened.door, a.pick
#' @return returns to stay and a different door
#'
#' @examples
#'   change_door()
#' @export
change_door <- function( stay=T, opened.door, a.pick )
{
  doors <- c(1,2,3)

  if( stay )
  {
    final.pick <- a.pick
  }
  if( ! stay )
  {
    final.pick <- doors[ doors != opened.door & doors != a.pick ]
  }

  return( final.pick )  # number between 1 and 3
}
