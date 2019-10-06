
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fivecarddraw

<!-- badges: start -->

<!-- badges: end -->

For simulating five-card draw poker scenarios

## Installation

You can install the released version of fivecarddraw from Github

``` r
remotes::install_github("mkearney/fivecarddraw")
```

## Example

Start a round of five-card draw

``` r
## start a game with five players
p <- Poker$new(players = 5)

## deal
p$deal()
#> $p1
#>   hearts10 diamonds12 diamonds13 diamonds14     clubs3 
#>        "🂺"        "🃌"        "🃍"        "🃎"        "🃓" 
#> 
#> $p2
#>  spades12   hearts1 diamonds5    clubs1    clubs8 
#>       "🂬"       "🂱"       "🃅"       "🃑"       "🃘" 
#> 
#> $p3
#>    spades2  diamonds1  diamonds9 diamonds10     clubs6 
#>        "🂢"        "🃁"        "🃉"        "🃊"        "🃖" 
#> 
#> $p4
#> spades4 spades6 hearts7 hearts8  clubs4 
#>     "🂤"     "🂦"     "🂷"     "🂸"     "🃔" 
#> 
#> $p5
#>   spades7   spades9 diamonds7   clubs10   clubs11 
#>       "🂧"       "🂩"       "🃇"       "🃚"       "🃛"

## get hand values
lapply(players(p), get_hand)
#> $p5
#> [1] "7s"
#> 
#> $p4
#> [1] "4s"
#> 
#> $p3
#> [1] "flush_double_draw"
#> 
#> $p2
#> [1] "15s"
#> 
#> $p1
#> [1] "flush_double_draw"
```

## NOTE:

This package was inspired by a question about five-card draw from my
father-in-law. It isn’t scientific and it’s a work in progress.
