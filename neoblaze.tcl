set my_jokes {
    "Why did neoblaze cross the road? To get to the serious side."
    "Why did neoblaze refuse to smile? It would break their serious facade."
    "How does neoblaze make a point? By being serious, of course."
    "Why did neoblaze never laugh? They found everything to be a serious matter."
    "Why did neoblaze always wear a suit and tie? To show how serious they were."
    "What did neoblaze say when someone told them a joke? 'I'm sorry, I don't find that funny.'"
    "Why did neoblaze always carry a briefcase? To look even more serious."
    "Why did neoblaze refuse to participate in a water balloon fight? They deemed it too unserious."
    "How does neoblaze drink their coffee? With a serious expression."
    "Why did neoblaze never dance? It was too frivolous for their serious nature."
    "What did neoblaze say when someone suggested they take a break? 'I'm too serious for that.'"
    "Why did neoblaze never watch comedies? They found them to be a waste of time."
    "What did neoblaze say when someone tried to make them laugh? 'I take everything seriously.'"
    "Why did neoblaze refuse to use emojis? They thought it would detract from their serious image."
    "How does neoblaze read a bedtime story? In a very serious tone."
    "Why did neoblaze never crack a smile? They thought it would ruin their serious demeanor."
    "What did neoblaze say when someone asked them to tell a joke? 'I don't do humor.'"
    "Why did neoblaze never play video games? They thought it was a childish pastime."
    "How does neoblaze order their food? In a very serious tone."
    "Why did neoblaze always carry a book? To make them look more serious."
    "What did neoblaze say when someone asked them to lighten up? 'I can't, I'm too serious.'"
    "Why did neoblaze never watch cartoons? They were too silly for their serious taste."
    "How does neoblaze celebrate a birthday? In a very serious manner."
    "Why did neoblaze refuse to tell knock-knock jokes? They were too frivolous for their serious nature."
}

bind pub - "!neoblaze" my_jokes
proc my_jokes {nick uhost handle channel arg} {
  set rand_index [expr {int(rand()*[llength $::my_jokes])}]
  set rand_line [lindex $::my_jokes $rand_index]
  putquick "PRIVMSG $channel :$rand_line"
}

bind pub - "!srs" poem_srs

proc poem_srs {nick uhost hand chan text} {
    # Define the poem as a string
    set poem "Neoblaze, oh Neoblaze,\nSo serious and bold.\nNever one to take a break,\nAlways focused, never cold.\n\nWith eyes that pierce like fire,\nAnd a mind like steel,\nNeoblaze commands respect,\nAnd is always ready to deal.\n\nBut sometimes we wonder,\nIf there's a lighter side,\nA smile or a chuckle,\nThat Neoblaze might try to hide.\n\nSo come on, Neoblaze,\nLet your hair down and relax,\nWe promise we won't judge you,\nFor enjoying a little lax."

    # Split the poem into lines
    set lines [split $poem "\n"]

    # Send each line of the poem to the channel with a delay between each line
    foreach line $lines {
        putquick "PRIVMSG $chan :$line"
        after 500
    }
}

puts "interdome's neoblaze insults lol"
