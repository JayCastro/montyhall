
#' @title
#'   Lets Play x 100
#' @description
#'   Plays the game a hundred times
#' @details
#'   PLays a hundred time and shows your results after those hundred and it determine
#'   what had the better winning percentage: staying or winning
#' @param ...
#'    n=100
#' @return
#'    return( results.df )
#' @examples
#'    play_n_games()
#' @export
play_n_games <- function( n=100 )
{

  library( dplyr )
  results.list <- list()   # collector
  loop.count <- 1

  for( i in 1:n )  # iterator
  {
    game.outcome <- play_game()
    results.list[[ loop.count ]] <- game.outcome
    loop.count <- loop.count + 1
  }

  results.df <- dplyr::bind_rows( results.list )

  table( results.df ) %>%
    prop.table( margin=1 ) %>%  # row proportions
    round( 2 ) %>%
    print()

  return( results.df )

}
