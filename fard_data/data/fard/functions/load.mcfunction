#runs on load
#called by #fard:load

#notify load
tellraw @a [{"translate":"%1$s","with":[{"text":"[FARD] You do not have the resource pack enabled!","color":"red"},[{"translate":"pack.fard.prefix","color":"aqua"},{"translate":"pack.fard.name","color":"dark_aqua"},": ",{"translate":"pack.fard.loaded","color":"dark_aqua"}]]}]

#build check
function fard:build/check

#initialise scoreboards
scoreboard objectives add fd_data dummy {"translate":"scoreboard.fard.data"}

#start clocks
# function fard:clock16
