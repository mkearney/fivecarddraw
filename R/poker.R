shuffle <- function(x) {
  cat("\033[90m  <<shuffle>> <<shuffle>>\n\033[39m")
  cat("\033[90m  <<shuffle>> <<shuffle>>\n\033[39m")
  x <- sample(x)
  attr(x, "shuffled") <- TRUE
  x
}

is_shuffled <- function(x) {
  length(x) < 52 || isTRUE(attr(x, "shuffled"))
}

catcard <- function(s = 0.05) {
  x <- sample(unname(unlist(deck)), 1)
  Sys.sleep(s)
  cat(paste0(" ", x))
}

catdiscard <- function(n = 1, s = 0.05) {
  cat(" ")
  for (i in seq_len(n)) {
    catdiscard_(s)
  }
  sp <- paste0(rep(" ", 6 - n), collapse = "")
  cat(sp)
}


catdiscard_ <- function(s = 0.05) {
  x <- "🂠"
  Sys.sleep(s)
  cat(x)
}


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
  p7 = NULL,
  p8 = NULL,
  p9 = NULL,
  p10 = NULL,
  p11 = NULL,
  p12 = NULL,
  players = 0,
  deck = NULL,
  deck_full = NULL,
  initialize  = function(players = 5) {
    self$players <- players
    self$deck_full <- unlist(deck)
    self$deck <- self$deck_full
    self
  },
  shuffle = function() {
    self$deck <- sample(self$deck)
    cat("\033[90m  <<shuffle>> <<shuffle>>\n\033[39m")
    cat("\033[90m  <<shuffle>> <<shuffle>>\n\033[39m")
    attr(self$deck, "shuffled") <- TRUE
    invisible(self)

  },
  deal = function() {
    p <- function(i) paste0("p", i)
    if (!is_shuffled(self$deck)) {
      self$deck <- shuffle(self$deck)
    }
    for (j in 1:5) {
      for (i in seq_len(self$players)) {
        catcard()
        if (length(self[[p(i)]]) == 5) next
        self[[p(i)]] <- c(self[[p(i)]], self$deck[1])
        self$deck <- self$deck[-1]
      }
      cat("\n")
    }
    invisible(self)
  },
  draw = function(n = NULL) {
    if (is.null(n)) {
      n <- sample(0:4, self$players, replace = TRUE)
    }
    if (length(n) == 1L) {
      n <- rep(n, self$players)
    }
    stopifnot(length(n) == 1L || length(n) == self$players)
    p <- function(i) paste0("p", i)

    for (i in seq_len(self$players)) {
      catdiscard(n[i])
      for (j in seq_len(max(n))) {
        if (length(self[[p(i)]]) == (5 + n[i])) next
        catcard()
        self[[p(i)]] <- c(self[[p(i)]], self$deck[1])
        self$deck <- self$deck[-1]
      }
      cat("\n")
    }
    invisible(self)
  },
  peek = function() {
    x <- rev(as.list(self, sorted = TRUE))
    nms <- names(x)[grepl("^p\\d", names(x)) & lengths(x) > 0]
    x <- x[names(x) %in% nms]
    x <- dapr::vap_chr(x, paste0, collapse = "")
    names(x) <- nms
    print(x)
    invisible(self)
  },
  show = function() {
    lapply(players(self), get_hand)
  },
  print = function() {
    x <- rev(as.list(self, sorted = TRUE))
    nms <- names(x)[grepl("^p\\d", names(x)) & lengths(x) > 0]
    x <- x[names(x) %in% nms]
    x <- dapr::vap_chr(x, paste0, collapse = "")
    names(x) <- nms
    print(x)
  }
)
)
