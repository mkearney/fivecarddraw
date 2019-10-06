
has_flush <- function(x) UseMethod("has_flush")
has_flush.character <- function(x) {
  x <- get_hand_values(x)
  has_flush(x)
}
has_flush.list <- function(x) {
  has_flush(x[[1]])
}
has_flush.data.frame <- function(x) {
  tfse::n_uq(x$suit) == 1
}


has_flush_draw <- function(x) UseMethod("has_flush_draw")
has_flush_draw.character <- function(x) {
  x <- get_hand_values(x)
  has_flush_draw(x)
}
has_flush_draw.list <- function(x) {
  has_flush_draw(x[[1]])
}
has_flush_draw.data.frame <- function(x) {
  max(as.integer(table(x$suit))) == 4
}


has_flush_double_draw <- function(x) UseMethod("has_flush_double_draw")
has_flush_double_draw.character <- function(x) {
  x <- get_hand_values(x)
  has_flush_double_draw(x)
}
has_flush_double_draw.list <- function(x) {
  has_flush_double_draw(x[[1]])
}
has_flush_double_draw.data.frame <- function(x) {
  max(as.integer(table(x$suit))) == 3
}
