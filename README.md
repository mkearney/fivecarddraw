
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

## shuffle
p$shuffle()
#> [90m  <<shuffle>> <<shuffle>>
#> [39m[90m  <<shuffle>> <<shuffle>>
#> [39m

## deal
p$deal()
#>  🃜 🃄 🃗 🃑 🃚
#>  🃙 🃓 🂸 🃎 🃄
#>  🃑 🃞 🃁 🂸 🂹
#>  🂢 🃗 🃃 🂾 🂩
#>  🃖 🂵 🃓 🃇 🃒

## show cards
p$peek()
#>      p1      p2      p3      p4      p5 
#> "🂶🃃🃎🃛🂾" "🂪🂡🂣🃓🂲" "🂹🃞🃙🂫🂻" "🃁🂮🂨🂳🃉" "🃔🂽🂼🂱🃕"

## draw cards
p$draw()
#>  🂠🂠     🃌 🃘
#>  🂠      🂲
#>  🂠🂠🂠    🂨 🂹 🃓
#>  🂠🂠🂠    🃇 🃌 🃜
#>  🂠🂠🂠    🃝 🃝 🃂

## show hands
p$show()
#> $p5
#> [1] "4s and 12s"
#> 
#> $p4
#> [1] "9s and 15s"
#> 
#> $p3
#> [1] "flush_double_draw"
#> 
#> $p2
#> [1] "3s"
#> 
#> $p1
#> [1] "6s and 14s"
```

## NOTE:

This package was inspired by a question about five-card draw from my
father-in-law. It isn’t scientific and it’s a work in progress.
