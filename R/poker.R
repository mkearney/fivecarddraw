
#' Poker
#'
#' Initialize a round of poker
#'
#' @export
Poker <- R6::R6Class("Poker", list(
  p1 = NULL,
  p2 = NULL,
  p3 = NULL,
  p4 = NULL,
  p5 = NULL,
  p6 = NULL,
  players = 0,
  deck = NULL,
  deck_full = NULL,
  initialize  = function(players = 5) {
    self$players <- players
    self$deck_full <- unlist(deck)
    self$deck <- self$deck_full
    self
  },
  deal = function() {
    p <- function(i) paste0("p", i)
    ## card 1
    for (i in seq_len(self$players)) {
      card <- sample(self$deck, 1)
      self[[p(i)]] <- card
      self$deck <- self$deck[self$deck != card]
    }
    ## card 2
    for (i in seq_len(self$players)) {
      card <- sample(self$deck, 1)
      self[[p(i)]] <- c(self[[p(i)]], card)
      self$deck <- self$deck[self$deck != card]
    }
    ## card 3
    for (i in seq_len(self$players)) {
      card <- sample(self$deck, 1)
      self[[p(i)]] <- c(self[[p(i)]], card)
      self$deck <- self$deck[self$deck != card]
    }
    ## card 4
    for (i in seq_len(self$players)) {
      card <- sample(self$deck, 1)
      self[[p(i)]] <- c(self[[p(i)]], card)
      self$deck <- self$deck[self$deck != card]
    }
    ## card 5
    for (i in seq_len(self$players)) {
      card <- sample(self$deck, 1)
      self[[p(i)]] <- sort(c(self[[p(i)]], card))
      self$deck <- self$deck[self$deck != card]
    }
    self
  },
  print = function() {
    x <- as.list(self)
    x <- x[grep("^p\\d", names(x))]
    x <- rev(x[lengths(x) > 0])
    print(x)
  }
)
)
