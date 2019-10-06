
p <- Poker$new()
p$deal()


has_flush_double_draw(p$p5)
has_pair(p$p1)

get_hand_values(p$p1)
p

dapr::lap(players(p), get_hand)

get_hand(p$p2)
has_straight(p$p1)
traceback()
p$p1

