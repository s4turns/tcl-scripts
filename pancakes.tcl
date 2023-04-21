set pancake_jokes {
  "Why did the pancake go to the doctor? Because it felt crêped."
  "What's a pancake's favorite song? 'Whisk it' by Salt-N-Pepa."
  "Why did the pancake run away from the syrup? It was too sweet."
  "Why did the pancake refuse to go to the gym? It was already stacked."
  "Why did the pancake go to the dentist? To get its fillings."
  "What did one pancake say to the other when they met at the party? 'Batter late than never.'"
  "Why did the pancake join a band? It had a lot of batter to play."
  "What do you call a pancake that's been around the block a few times? A seasoned flapjack."
  "Why did the pancake get into a fight? It was on a short stack."
  "What did the pancake say to the baseball player? 'Batter up!'"
  "Why did the pancake go to space? To see if it could flip without gravity."
  "What's a pancake's favorite video game? Flapjack and Clank."
  "Why did the pancake get a job at the bank? To make some dough."
  "Why did the pancake go to the party alone? It didn't want to be part of a battering."
  "What did the pancake say when it won the race? 'I'm on a roll!'"
  "Why did the pancake go to the psychiatrist? It was feeling flat."
  "Why did the pancake go to the bar? To get stacked."
  "What did the pancake say when it was offered a job? 'I'll rise to the occasion.'"
  "Why did the pancake go to the art museum? To see some abstract syrup."
  "What did the pancake say when it was asked to join the army? 'I'm ready to batter.'"
}

bind pub - "!pancakes" pancake_jokes
proc pancake_jokes {nick uhost handle channel arg} {
  set rand_index [expr {int(rand()*[llength $::pancake_jokes])}]
  set rand_line [lindex $::pancake_jokes $rand_index]
  putquick "PRIVMSG $channel :$rand_line"
}

puts "interdome's pancakes jokes"
