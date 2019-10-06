
get_hand_values <- function(x) {
  v <- names(x)
  v <- strsplit(v, "(?<=\\D)(?=\\d)", perl = TRUE)
  v <- tibble::tibble(
    suit = dapr::vap_chr(v, `[`, 1L),
    value = as.integer(dapr::vap_chr(v, `[`, 2L)))
  vah <- v
  vah$value[vah$value == 1L] <- 15L
  val <- v
  list(ah = vah, al = val)
}

players <- function(x) {
  x <- as.list(x)
  x <- x[grep("^p\\d+$", names(x))]
  x <- x[lengths(x) > 0]
  x
}
