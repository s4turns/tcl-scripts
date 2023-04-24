# Set the flood protection timer to 5 seconds
set antiflood "5"

bind pub - "!reqddos" reqddos
proc reqddos {nick uhost handle channel arg} {
    unbind pub - "!reqddos" reqddos
    if {![string length [set v [lindex $arg 0]]]} { set v $nick ; set nick $::botnick }
    switch -- [rand 25] {
      1 { putserv "privmsg $channel :\00309brb, pming this faggots fate, \037lold!" }
      2 { putserv "privmsg $channel :\00309kek loading my ciscos!" }
      3 { putserv "privmsg $channel :\00309this dude is gonna be so pissed, loading boats.." }
      4 { putserv "privmsg $channel :\00309lool, this mf is gonna get it good.." }
      5 { putserv "privmsg $channel :\00309omfg, rox the box..loading up my ion cannon" }
      6 { putserv "privmsg $channel :\00304You\00307'\00308ll \00309be \00310begging \00311for \00312mercy \00311when \00310I\00309'\00308m \00307done \00306with \00305you\00304!" }
      7 { putserv "privmsg $channel :\00304You\00307'\00308ve \00309bitten \00310off \00311more \00312than \00311you \00310can \00309chew\00308!" }
      8 { putserv "privmsg $channel :\00304You\00307'\00308re \00309like \00310a \00311lamb \00312to \00311the \00310slaughter\00308!" }
      9 { putserv "privmsg $channel :\00304Your \00307defeat \00308is \00309inevitable\00308!" }
      10 { putserv "privmsg $channel :\00304You\00307'\00308re \00309no \00310match \00311for \00312my \00311skills\00308!" }
      11 { putserv "privmsg $channel :\00304You\00307'\00308ll \00309regret \00310the \00311day \00312you \00311crossed \00310me\00308!" }
      12 { putserv "privmsg $channel :\00304You\00307'\00308ve \00309made \00310a \00311fatal \00312mistake\00308!" }
      13 { putserv "privmsg $channel :\00304Your \00307destruction \00308is \00309imminent\00308!" }
      14 { putserv "privmsg $channel :\00304I\00307'\00308ll \00309crush \00310you \00311like \00312a \00311bug\00308!" }
      15 { putserv "privmsg $channel :\00304You\00307'\00308re \00309outmatched \00310and \00311outgunned\00308!" }
      16 { putserv "privmsg $channel :\00304You\00307'\00308re \00309not \00310ready \00311for \00312this \00311level \00310of \00309destruction\00308!" }
      17 { putserv "privmsg $channel :\00304You\00307'\00308re \00309in \00310over \00311your \00312head\00308!" }
      18 { putserv "privmsg $channel :\00304I\00307'\00308m \00309going \00310to \00311make \00312an \00311example \00310out \00309of \00308you\00307!" }
      19 { putserv "privmsg $channel :\00304You'\00307re \00308going \00309to \00310regret \00311ever \00312challenging \00310me\00308!" }
      20 { putserv "privmsg $channel :\00304You'\00307re \00308like \00309a \00310lamb \00311to \00312the \00311slaughter\00308!" }
      21 { putserv "privmsg $channel :\00304You'\00307re \00308no \00309match \00310for \00311my \00312power\00308!" }
      22 { putserv "privmsg $channel :\00304I'\00307m \00308the \00309ultimate \00310destroyer\00308!" }
      23 { putserv "privmsg $channel :\00304You'\00307re \00308not \00309prepared \00310for \00311what'\00312s \00311coming\00308!" }
      24 { putserv "privmsg $channel :\00304You'\00307re \00308about \00309to \00310learn \00311the \00312hard \00311way\00308!" }
      25 { putserv "privmsg $channel :\00304You'\00307re \00308playing \00309with \00310fire\00308!" }
    }
    switch -- [rand 20] {
      1 { putserv "privmsg $v :\00308hey bitch, im loading up my cisco's to fuck your connection up" }
      2 { putserv "privmsg $v :\00305im about to fuck your connection so hard" }
      3 { putserv "privmsg $v :\00306you are done bwitch, loawding my kwano cannons, derrr -dabguy" }
      4 { putserv "privmsg $v :\00308im gonna fuck your sister" }
      5 { putserv "privmsg $v :\00302prepare your anus for destruction" }
      6 { putserv "privmsg $v :\00311ALARM: Your computer is under attack!" }
      7 { putserv "privmsg $v :\00312CAUTION: Malware has been detected on your system!" }
      8 { putserv "privmsg $v :\00304CRITICAL: Your network has been hacked!" }
      9 { putserv "privmsg $v :\00307WARNING: Your device has been infected with a virus!" }
      10 { putserv "privmsg $v :\00308ALERT: Unauthorized access has been detected on your network!" }
      11 { putserv "privmsg $v :\00310CAUTION: Your personal information has been compromised!" }
      12 { putserv "privmsg $v :\00311WARNING: Your accounts have been hacked!" }
      13 { putserv "privmsg $v :\00312ATTENTION: Your email has been infiltrated by hackers!" }
      14 { putserv "privmsg $v :\00304DANGER: Your online identity is at risk!" }
      15 { putserv "privmsg $v :\00307ALERT: Your privacy has been invaded by cybercriminals!" }
      16 { putserv "privmsg $v :\00308WARNING: Your computer has been infected with spyware!" }
      17 { putserv "privmsg $v :\00309ATTENTION: Your web browsing is being monitored by hackers!" }
      18 { putserv "privmsg $v :\00310CRITICAL: Your accounts have been compromised and are at risk of theft!" }
      19 { putserv "privmsg $v :\00311CAUTION: Your online banking credentials have been stolen!" }
      20 { putserv "privmsg $v :\00312DANGER: Your online accounts are being used for fraudulent activities!" }
    }
	utimer $::antiflood "bind pub - !reqddos reqddos"
}

putlog "reqddos 1.0 by interdome"
