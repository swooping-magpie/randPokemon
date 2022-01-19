


#' @export
rand_pokemon <- function(n = 1) {
    pokemon_names <- readRDS(here::here("Data", "pokemon_en.rds"))
    stopifnot("n must be positive number" = n >= 1)
    stopifnot("n musn't exceed number of total pokemon" = n <= length(pokemon_names))
    return(sample(pokemon_names, n, replace = FALSE))
}
