
has_two_pair <- function(x) UseMethod("has_two_pair")
has_two_pair.character <- function(x) {
  x <- get_hand_values(x)
  has_two_pair(x)
}
has_two_pair.list <- function(x) {
  has_two_pair(x[[1]])
}
has_two_pair.data.frame <- function(x) {
  sum(as.integer(table(x$value)) == 2) == 2
}

get_two_pair <- function(x) UseMethod("get_two_pair")
get_two_pair.character <- function(x) {
  x <- get_hand_values(x)
  get_two_pair(x)
}
get_two_pair.list <- function(x) {
  get_two_pair(x[[1]])
}
get_two_pair.data.frame <- function(x) {
  x <- sort(table(x$value), decreasing = TRUE)
  paste0(names(x)[as.integer(x) == 2], "s", collapse = " and ")
}


has_pair <- function(x) UseMethod("has_pair")
has_pair.character <- function(x) {
  x <- get_hand_values(x)
  has_pair(x)
}
has_pair.list <- function(x) {
  has_pair(x[[1]])
}
has_pair.data.frame <- function(x) {
  sum(as.integer(table(x$value)) == 2) == 1
}


get_pair <- function(x) UseMethod("get_pair")
get_pair.character <- function(x) {
  x <- get_hand_values(x)
  get_pair(x)
}
get_pair.list <- function(x) {
  get_pair(x[[1]])
}
get_pair.data.frame <- function(x) {
  x <- sort(table(x$value), decreasing = TRUE)
  paste0(names(x)[as.integer(x) == 2], "s")
}


has_trips <- function(x) UseMethod("has_trips")
has_trips.character <- function(x) {
  x <- get_hand_values(x)
  has_trips(x)
}
has_trips.list <- function(x) {
  has_trips(x[[1]])
}
has_trips.data.frame <- function(x) {
  sum(as.integer(table(x$value)) == 3) == 1
}


has_full_house <- function(x) UseMethod("has_full_house")
has_full_house.character <- function(x) {
  x <- get_hand_values(x)
  has_full_house(x)
}
has_full_house.list <- function(x) {
  has_full_house(x[[1]])
}
has_full_house.data.frame <- function(x) {
  has_trips(x) && has_pair(x)
}


has_four_kind <- function(x) UseMethod("has_four_kind")
has_four_kind.character <- function(x) {
  x <- get_hand_values(x)
  has_four_kind(x)
}
has_four_kind.list <- function(x) {
  has_four_kind(x[[1]])
}
has_four_kind.data.frame <- function(x) {
  sum(as.integer(table(x$value)) == 4) == 1
}
