##
 # check_altar_struc.mcfunction
 # intern/spawns/config
 #
 # Created by .
##

tag @s remove valid
execute if block ~ ~-1 ~ diamond_block if block ^ ^ ^-1 observer run tag @s add valid

kill @s[tag=!valid]
playsound block.beacon.ambient master @a ~ ~ ~
particle happy_villager ~ ~ ~ 1 2 1 10 10

execute as @e[type=item_frame,tag=altar,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:glowstone",Count:1b}
execute as @e[type=item_frame,tag=altar,tag=!hasItem] at @s run tag @s add hasItem
