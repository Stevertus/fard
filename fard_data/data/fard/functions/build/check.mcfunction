#checks the version and compares it to see if there is an update or a downdate
#called by fard/load

#store build number
scoreboard players operation build_number.prev fd_data = build_number fd_data
#update current build number ***MODIFY BUILD COUNT HERE (ONLY FOR RELEASES, NOT COMMITS)***
scoreboard players set build_number fd_data 0
#if updating, send update message
execute if score build_number.prev fd_data < build_number fd_data run tellraw @a {"translate":"text.fard.update","hoverEvent":{"action":"show_text","value":"Click to view the changelogs"},"clickEvent":{"action":"open_url","value":"https://github.com/Stevertus/fard/releases"},"color":"aqua"}
#if downdating, send warning message
execute if score build_number.prev fd_data > build_number fd_data run function fard:build/downdating
#remove fake players
scoreboard players reset build_number.prev fd_data
#check server version
function fard:build/server_version_check

#give feedback if ran by player and a build change has occured
tellraw @s[type=player] [{"translate":"text.fard.update.build_number","color":"gray"},{"text":": ","color":"gray"},{"score":{"name":"build_number","objective":"fd_data"}},{"text":", ","color":"gray"},{"translate":"text.fard.update.server_version_number","color":"gray"},{"text":": 1.","color":"gray"},{"score":{"name":"server_version","objective":"fd_data"}}]
