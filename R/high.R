
get_high_card <- function(x) UseMethod("get_high_card")
get_high_card.character <- function(x) {
  x <- get_hand_values(x)
  get_high_card(x)
}
get_high_card.list <- function(x) {
  get_high_card(x[[1]])
}
get_high_card.data.frame <- function(x) {
  max(x$value)
}
