#notifies everyone that the pack has downdated and disables the pack
#called by fard/build/check if it finds you are downdating

tellraw @a {"translate":"text.fard.downdate","clickEvent":{"action":"open_url","value":"https://github.com/Stevertus/fard/releases/latest"},"color":"red"}
datapack disable "file/FARD (Data)"
tellraw @a {"translate":"text.fard.downdate.done","color":"green"}
scoreboard players operation build_number fd_data = build_number.prev fd_data
