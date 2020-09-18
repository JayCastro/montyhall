#' @title
#'    Door Selection
#' @description
#'    `select_door` generates a randome door that will be your inital selection
#' @details
#'       Doors that are selected are from 1-3 and are picked at random and that will be your inital pick
#' @param ... no arguments are used by the function.
#'
#' @return The function returns an interger selected which door is your intinital pick
#'
#' @examples
#'   select_door()
#' @export
select_door <- function( )
{
  doors <- c(1,2,3)
  a.pick <- sample( doors, size=1 )
  return( a.pick )  # number between 1 and 3
}
