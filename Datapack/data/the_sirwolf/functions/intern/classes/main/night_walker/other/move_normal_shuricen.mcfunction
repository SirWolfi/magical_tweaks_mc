##
 # move_normal_shuricen.mcfunction
 # intern/classes/main/night_walker/other
 #
 # Created by .
##

scoreboard players add @s shuricen_range 1
execute if score @s shuricen_range >= MAX_rang shuricen_range run kill @s
scoreboard players set @s tmp 0
execute if block ~ ~ ~ air run scoreboard players set @s tmp 1
execute if score @s tmp matches 0 run kill @s

#execute if score @s shuricen_range >= c5 variables as @e[distance=..2,type=!armor_stand,type=!item] run effect give @s wither 10 1
execute if score @s shuricen_range >= c5 variables as @e[distance=..2,type=!armor_stand,type=!item] run effect give @s instant_damage 5 0
execute if score @s shuricen_range >= c5 variables if entity @e[distance=..2,type=!armor_stand,type=!item] run kill @s

particle falling_dust coal_block ~ ~ ~ 0 0 0 0.01 3

tp @s ^ ^ ^-1
#tp @s ^ ^ ^ facing ^ ^0.1 ^-1