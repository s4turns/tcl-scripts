# Random Quotes Script for Eggdrop

# Set the channel where you want the quotes to be displayed
set channel "#yourchan"

# List of quotes
set quotes {
    "What do I look like? A nigger?"
    "Please stand back, you must be at least 6ft to take this ride…"
    "Hmmm I lost my brain somewhere… but it looks like I’m in the right company for brain dead morons"
    "You know team , hacking the Gibson is much like sitting in your moms basement packeting chicks"
    "I was looking for my panties but all I see is basement dwellers"
    "Can someone turn the lights on please I feel something in my ass… "
    "Hookers n Blow, now that would be a Merry Sniffmas"
    "How does it feel to have such a small dick?"
    "Last time I said ho ho ho, your mom showed up in my bedroom…"
    "The only thing you can brute force is your way through a happy meal "
    "Oh jeepers another ddos, I guess the welfare office is closed today :o"
    "Inb4 they get mad and send packets "
    "You've had enough weed, have you considered doing something else? Like getting a job?"
    "BE CAREFUL GUYS, I almost lost an eye to a flying packet! ACK!"
    "A new non-maintenance event has been posted to the Events log page in the control panel for your server."
    "I swear I will smash that 3 VPS if you make me mad once more!!!"
    "When she said it's ok it happens to most guys, she lied."
    "You know you can get therapy for that right?"
    "https://www.wikihow.com/Get-a-Job"
    "I'm looking for any single ladies who like big packets & debt"
}

# Function to pick a random quote
proc getRandomQuote {} {
    global quotes
    set randomIndex [expr {int(rand() * [llength $quotes])}]
    return [lindex $quotes $randomIndex]
}

# Function to announce a random quote in the channel
proc announceRandomQuote {} {
    global channel
    set quote [getRandomQuote]
    putnow "PRIVMSG $channel :Random Quote: $quote"
}

# Recursive timer to announce quotes every 30 minutes
proc startQuoteTimer {} {
    announceRandomQuote
    after 1800000 startQuoteTimer
}

# Call the function to start the timer immediately
startQuoteTimer
