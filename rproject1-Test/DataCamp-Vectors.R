poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)

weekdays <- c("Monday", "Tuesdau", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- weekdays
names(roulette_vector) <- weekdays

total_daily <- poker_vector + roulette_vector

total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)
total_week <- sum(c(total_roulette, total_poker))


poker_wednesday <- poker_vector[3]
poker_midweek <- poker_vector[c(2, 3, 4)]
poker_midweek

roulette_selection_vector <- poker_vector[2:5]
roulette_selection_vector

poker_start <- poker_vector[c("Monday", "Tuesdau", "Wednesday")]

selection_vector <- poker_vector > 0
selection_vector

poker_winning_days <- poker_vector[selection_vector]


selection_vector <- roulette_vector > 0
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days
