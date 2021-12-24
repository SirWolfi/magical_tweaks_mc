##
 # move_shuricen.mcfunction
 # intern/classes/main/night_walker/other
 #
 # Created by .
##

scoreboard players add @s shuricen_range 1
execute if score @s shuricen_range >= MAX_rang shuricen_range run kill @s
scoreboard players set @s tmp 0
execute if block ~ ~ ~ air run scoreboard players set @s tmp 1
execute if score @s tmp matches 0 run kill @s

execute if score @s shuricen_range >= c10 variables as @e[distance=..3,type=!armor_stand,type=!item] run effect give @s poison 5 1
execute if score @s shuricen_range >= c10 variables as @e[distance=..3,type=!armor_stand,type=!item] run effect give @s blindness 10 2
execute if score @s shuricen_range >= c10 variables if entity @e[distance=..3,type=!armor_stand,type=!item] run kill @s

particle falling_dust coal_block ~ ~ ~ 0.3 0.3 0.3 0.01 30

tp @s ^ ^ ^-0.5