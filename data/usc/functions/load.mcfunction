# automatically called each time the server is started
#TODO to improve handling of server crashes, make sure these commands are only run once
#TODO allow enabling announceAdvancements as a setup option
gamerule announceAdvancements false
defaultgamemode adventure
#TODO forceload lobby (as long as it has command blocks), automatically run init, replace readme instruction to run init with a setup function that spawns the book
