#checks the server version (e.g. 1.14) - increments, such as 1.14.1, aren't and can't be detected
#called by launch/build/check

#summon test entity
summon armor_stand ~ 0 ~ {HandItems:[{id:trident,Count:1b,tag:{fard:{update:13}}},{id:lectern,Count:1b,tag:{fard:{update:14}}}],ArmorItems:[{id:bee_spawn_egg,Count:1b,tag:{fard:{update:15}}},{},{},{}],Tags:["fard_version_check"],Invisible:1b,Marker:1b,Small:1b,NoBasePlate:1b,Invulnerable:1b}
#test hand items
execute if entity @e[type=armor_stand,tag=fard_version_check,nbt={HandItems:[{tag:{fard:{update:13}}}]}] run scoreboard players set server_version fd_data 13
execute if entity @e[type=armor_stand,tag=fard_version_check,nbt={HandItems:[{tag:{fard:{update:14}}}]}] run scoreboard players set server_version fd_data 14
execute if entity @e[type=armor_stand,tag=fard_version_check,nbt={ArmorItems:[{tag:{fard:{update:15}}}]}] run scoreboard players set server_version fd_data 15
#disable pack is score is too low
execute unless score server_version fd_data matches 15.. run tellraw @a {"translate":"text.launch.server_version.too_low","color":"red"}
execute unless score server_version fd_data matches 15.. run datapack disable "file/FARD (Data)"
execute unless score server_version fd_data matches 15.. run tellraw @a {"translate":"text.launch.server_version.too_low.done","color":"green"}
#kill test entities
kill @e[type=armor_stand,tag=fard_version_check]
