tellraw @a [{"translate":"text.fard.downdate","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Stevertus/fard/releases/latest"}}]
datapack disable "file/fard_data"
tellraw @a [{"translate":"text.fard.downdate.done","color":"green"}]
scoreboard players operation build_number fd_data = build_number.prev fd_data