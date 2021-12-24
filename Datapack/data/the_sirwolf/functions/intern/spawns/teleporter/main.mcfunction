##
 # main.mcfunction
 # intern/spawns/teleporter
 #
 # Created by .
##

# crafting



execute as @e[type=item_frame,tag=telep_in] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] run scoreboard players add @s telep_reg 1
execute as @e[type=item_frame,tag=telep_in] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] run kill @e[type=item,distance=..1]

execute as @e[type=item_frame,tag=telep_out] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] run scoreboard players add @s telep_reg 1
execute as @e[type=item_frame,tag=telep_out] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] run kill @e[type=item,distance=..1]

execute as @e[type=item_frame,tag=telep_in] at @s run execute at @a[scores={sneak=0},distance=..1] run title @p actionbar [{"text":"TeleporterId: ","color": "dark_gray"},{"score":{"name": "@e[type=item_frame,tag=telep_in,distance=..1,sort=nearest,limit=1]","objective": "telep_reg"},"color":"dark_gray"}]

execute as @e[type=item_frame,tag=telep_out] at @s run execute at @a[scores={sneak=0},distance=..1] run title @p actionbar [{"text":"TeleporterId: ","color": "dark_gray"},{"score":{"name": "@e[type=item_frame,tag=telep_out,distance=..1,sort=nearest,limit=1]","objective": "telep_reg"},"color":"dark_gray"}]

execute as @e[type=item_frame,tag=telep_in] at @s if entity @p[scores={sneak=1..},distance=..1] run function the_sirwolf:intern/spawns/teleporter/teleport_player

execute as @e[type=item_frame,tag=telep_in,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:ender_eye",Count:1b}
execute as @e[type=item_frame,tag=telep_in,tag=!hasItem] at @s run tag @s add hasItem
execute as @e[type=item_frame,tag=telep_in] at @s if block ^ ^ ^-1 glowstone run tag @s add valid
kill @e[type=item_frame,tag=telep_in,tag=!valid]

execute as @e[type=item_frame,tag=telep_out,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:compass",Count:1b}
execute as @e[type=item_frame,tag=telep_out,tag=!hasItem] at @s run tag @s add hasItem
execute as @e[type=item_frame,tag=telep_out] at @s if block ^ ^ ^-1 glowstone run tag @s add valid
kill @e[type=item_frame,tag=telep_out,tag=!valid]

execute as @a[scores={teleporter_list=1..}] at @s run function the_sirwolf:intern/spawns/teleporter/trigger_l
execute as @a[scores={teleporter_info=1..}] at @s run function the_sirwolf:intern/spawns/teleporter/trigger_info