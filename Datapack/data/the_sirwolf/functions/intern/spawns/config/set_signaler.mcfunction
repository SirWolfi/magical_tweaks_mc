##
 # set_signaler.mcfunction
 # intern/spawns/config
 #
 # Created by The_SirWolf
##

scoreboard players set @s signal_sc -1

execute if block ~ ~-1 ~ stone run scoreboard players set @s signal_sc 0
execute if block ~ ~-1 ~ obsidian run scoreboard players set @s signal_sc 1
execute if block ~ ~-1 ~ oak_planks run scoreboard players set @s signal_sc 2
execute if block ~ ~-1 ~ birch_planks run scoreboard players set @s signal_sc 3
execute if block ~ ~-1 ~ acacia_planks run scoreboard players set @s signal_sc 4
execute if block ~ ~-1 ~ jungle_planks run scoreboard players set @s signal_sc 5
execute if block ~ ~-1 ~ spruce_planks run scoreboard players set @s signal_sc 6
execute if block ~ ~-1 ~ warped_planks run scoreboard players set @s signal_sc 7
execute if block ~ ~-1 ~ crimson_planks run scoreboard players set @s signal_sc 8
execute if block ~ ~-1 ~ dark_oak_planks run scoreboard players set @s signal_sc 9
execute if block ~ ~-1 ~ cobblestone run scoreboard players set @s signal_sc 10
execute if block ~ ~-1 ~ coal_block run scoreboard players set @s signal_sc 11
execute if block ~ ~-1 ~ iron_block run scoreboard players set @s signal_sc 12
execute if block ~ ~-1 ~ gold_block run scoreboard players set @s signal_sc 13
execute if block ~ ~-1 ~ emerald_block run scoreboard players set @s signal_sc 14
execute if block ~ ~-1 ~ glass run scoreboard players set @s signal_sc 15
execute if block ~ ~-1 ~ dirt run scoreboard players set @s signal_sc 16
execute if block ~ ~-1 ~ crafting_table run scoreboard players set @s signal_sc 17
execute if block ~ ~-1 ~ furnace run scoreboard players set @s signal_sc 18
execute if block ~ ~-1 ~ diorite run scoreboard players set @s signal_sc 19
execute if block ~ ~-1 ~ granite run scoreboard players set @s signal_sc 20
execute if block ~ ~-1 ~ gravel run scoreboard players set @s signal_sc 21
execute if block ~ ~-1 ~ soul_sand run scoreboard players set @s signal_sc 22
execute if block ~ ~-1 ~ netherrack run scoreboard players set @s signal_sc 23

execute if score @s signal_sc matches -1 run kill @s
execute if entity @s[nbt=!{Facing:1b}] run kill @s

tag @s add setSig

