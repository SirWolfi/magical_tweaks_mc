##
 # fire_ball_tick.mcfunction
 # intern/classes/main/mage/items/bullets
 #
 # Created by .
##

execute as @e[type=armor_stand,tag=fire_ball] at @s run tp @s ^ ^ ^-1
execute as @e[type=armor_stand,tag=fire_ball] at @s run scoreboard players add @s fire_b_livetime 1

execute as @e[type=armor_stand,tag=fire_ball] at @s if score @s fire_b_livetime >= MAX fire_b_livetime run function the_sirwolf:intern/classes/main/mage/items/bullets/fire_b_expl
execute as @e[type=armor_stand,tag=fire_ball] at @s unless block ~ ~ ~ air unless block ~ ~ ~ #ice run function the_sirwolf:intern/classes/main/mage/items/bullets/fire_b_expl

execute as @e[type=armor_stand,tag=fire_ball] at @s if score @s fire_b_livetime matches 20 if entity @e[distance=..2,type=!armor_stand,type=!item_frame,type=!item] run function the_sirwolf:intern/classes/main/mage/items/bullets/fire_b_expl

execute as @e[type=armor_stand,tag=fire_ball] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace #ice

execute as @e[type=armor_stand,tag=fire_ball] at @s run particle flame ~ ~ ~ 1 1 1 0.01 20