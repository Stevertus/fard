################################################
#
# Author:
#  Stevertus
#
# Description:    
#  checks the version and compares it to see if there is an update or a downdate
#
# Called in:
#  fard/load
#
################################################
scoreboard players operation build_number.prev fd_data = build_number fd_data
scoreboard players set build_number fd_data 0
execute if score build_number.prev fd_data < build_number fd_data run tellraw @a [{"translate":"text.fard.update","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Stevertus/fard/releases"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to view the changelogs"}]}}]
execute if score build_number.prev fd_data > build_number fd_data run function fard:objd/if2
function fard:build/server_version_check
scoreboard players reset build_number.prev fd_data