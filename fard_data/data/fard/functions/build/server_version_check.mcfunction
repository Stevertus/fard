################################################
#
# Author:
#  Stevertus
#
# Description:    
#  checks the server version (e.g. 1.14) - increments, such as 1.14.1, aren't and can't be detected
#
# Called in:
#  build/check
#
################################################
summon armor_stand ~ 0 ~ {Marker:1,Invisible:1,HandItems:[{id:"minecraft:trident",tag:{objd:{update:13}},Count:1b},{id:"minecraft:lectern",tag:{objd:{update:14}},Count:1b}],ArmorItems:[{},{},{},{id:"minecraft:bee_spawn_egg",tag:{objd:{update:15}},Count:1b}],Invulnerable:1,Small:1,NoGravity:1,Tags:["fd_objd_version_check"]}
execute if entity @e[type=armor_stand,tag=fd_objd_version_check,nbt={HandItems:[{tag:{fard:{update:13}}}]}] run scoreboard players set server_version fd_objd_data 13
execute if entity @e[type=armor_stand,tag=fd_objd_version_check,nbt={HandItems:[{tag:{fard:{update:14}}}]}] run scoreboard players set server_version fd_objd_data 14
execute if entity @e[type=armor_stand,tag=fd_objd_version_check,nbt={ArmorItems:[{tag:{fard:{update:14}}}]}] run scoreboard players set server_version fd_objd_data 15
execute unless score server_version fd_objd_data matches 15.. run function fard:objd/if1
kill @e[type=armor_stand,tag=fd_objd_version_check]