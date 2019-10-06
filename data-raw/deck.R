## code to prepare `DECK` dataset goes here
spades <- c(
  "\U1F0A1",
  "\U1F0A2",
  "\U1F0A3",
  "\U1F0A4",
  "\U1F0A5",
  "\U1F0A6",
  "\U1F0A7",
  "\U1F0A8",
  "\U1F0A9",
  "\U1F0Aa",
  "\U1F0Ab",
  "\U1F0Ac",
  "\U1F0Ad",
  "\U1F0Ae"
)

hearts <- c(
  "\U1F0B1",
  "\U1F0B2",
  "\U1F0B3",
  "\U1F0B4",
  "\U1F0B5",
  "\U1F0B6",
  "\U1F0B7",
  "\U1F0B8",
  "\U1F0B9",
  "\U1F0Ba",
  "\U1F0Bb",
  "\U1F0Bc",
  "\U1F0Bd",
  "\U1F0Be"
)

diamonds <- c(
  "\U1F0C1",
  "\U1F0C2",
  "\U1F0C3",
  "\U1F0C4",
  "\U1F0C5",
  "\U1F0C6",
  "\U1F0C7",
  "\U1F0C8",
  "\U1F0C9",
  "\U1F0Ca",
  "\U1F0Cb",
  "\U1F0Cc",
  "\U1F0Cd",
  "\U1F0Ce"
)

clubs <- c(
  "\U1F0D1",
  "\U1F0D2",
  "\U1F0D3",
  "\U1F0D4",
  "\U1F0D5",
  "\U1F0D6",
  "\U1F0D7",
  "\U1F0D8",
  "\U1F0D9",
  "\U1F0Da",
  "\U1F0Db",
  "\U1F0Dc",
  "\U1F0Dd",
  "\U1F0De"
)

deck <- list(
  spades = spades,
  hearts = hearts,
  diamonds = diamonds,
  clubs = clubs
)

usethis::use_data(deck, overwrite = TRUE, internal = TRUE)
