scoreboard objectives add fd_data dummy
scoreboard objectives add fd_objd_data dummy
################################################
#
# Author:
#  Stevertus
#
# Description:    
#  runs on load
#
# Called in:
#  #fard:load
#
################################################
tellraw @a [{"translate":"%1$s","with":[{"text":"[FARD] You do not have the resource pack enabled!","color":"red"},[{"translate":"pack.fard.prefix","color":"aqua"},{"translate":"pack.fard.name","color":"dark_aqua"},{"text":": "},{"translate":"pack.fard.loaded","color":"dark_aqua"}]]}]
function fard:build/check
function fard:timers/clock16