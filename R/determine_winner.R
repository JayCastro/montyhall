#' @title
#'    Did I Win?
#' @description
#'   This function determines if you win or not
#' @details
#'  This function will return a WIN or LOSE depending on the outcome
#' @param ...
#'    final.pick, game
#' @return returns win or lose
#'
#' @examples
#'   determine_winner()
#' @export
determine_winner <- function( final.pick, game )
{
  if( game[ final.pick ] == "car" )
  {
    return( "WIN" )
  }
  if( game[ final.pick ] == "goat" )
  {
    return( "LOSE" )
  }
}
