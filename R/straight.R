has_straight <- function(x) UseMethod("has_straight")
has_straight.character <- function(x) {
  x <- get_hand_values(x)
  has_straight(x)
}
has_straight.list <- function(x) {
  any(dapr::vap_lgl(x, has_straight))
}
has_straight.data.frame <- function(x) {
  sum(diff(sort(x$value)) == 1) == 4
}



has_straight_draw <- function(x) UseMethod("has_straight_draw")
has_straight_draw.character <- function(x) {
  x <- get_hand_values(x)
  has_straight_draw(x)
}
has_straight_draw.list <- function(x) {
  any(dapr::vap_lgl(x, has_straight_draw))
}
has_straight_draw.data.frame <- function(x) {
  sum(diff(sort(x$value)) == 1) == 3
}


has_open_ended_straight_draw <- function(x) UseMethod("has_open_ended_straight_draw")
has_open_ended_straight_draw.character <- function(x) {
  x <- get_hand_values(x)
  has_open_ended_straight_draw(x)
}
has_open_ended_straight_draw.list <- function(x) {
  any(dapr::vap_lgl(x, has_open_ended_straight_draw))
}
has_open_ended_straight_draw.data.frame <- function(x) {
  if (!has_straight_draw(x)) {
    return(FALSE)
  }
  x$value <- sort(x$value)[diff(sort(x$value)) == 1]
  all(x$value > 1) &&
    all(x$value < 15)
}
