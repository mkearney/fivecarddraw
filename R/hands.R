get_hand <- function(x) {
  if (has_four_kind(x)) {
    return("four_kind")
  }
  if (has_full_house(x)) {
    return("full_house")
  }
  if (has_flush(x)) {
    return("flush")
  }
  if (has_straight(x)) {
    return("straight")
  }
  if (has_trips(x)) {
    return("trips")
  }
  if (has_two_pair(x)) {
    return(get_two_pair(x))
  }
  if (has_pair(x)) {
    return(get_pair(x))
  }
  if (has_flush_draw(x)) {
    return("flush_draw")
  }
  if (has_open_ended_straight_draw(x)) {
    return("open_ended_straight_draw")
  }
  if (has_straight_draw(x)) {
    return("has_straight_draw")
  }
  if (has_flush_double_draw(x)) {
    return("flush_double_draw")
  }
  paste0(get_high_card(x), "_high")
}
