##
 # tick.mcfunction
 # intern/classes/main/scientist/items/land_mine
 #
 # Created by .
##

execute as @e[tag=land_mine,type=armor_stand] at @s unless score @s land_mine_livetime_max >= c0 variables run scoreboard players operation @s land_mine_livetime_max = NORM land_mine_livetime_max

scoreboard players add @e[tag=land_mine,type=armor_stand] land_mine_livetime 1
execute as @e[tag=land_mine,type=armor_stand] at @s if score @s land_mine_livetime >= @s land_mine_livetime_max run function the_sirwolf:intern/classes/main/scientist/items/land_mine/explode

execute as @e[tag=land_mine,type=armor_stand] at @s if entity @p[distance=..1.6] if score @s land_mine_livetime >= c60 variables run function the_sirwolf:intern/classes/main/scientist/items/land_mine/explode

execute as @e[tag=land_mine,type=armor_stand] at @s run particle dust 0.239 0.216 0.216 1 ~ ~ ~ 0.5 0.2 0.5 0.01 20
