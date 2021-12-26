##
 # blood_line_tick.mcfunction
 # intern/classes/main/mage/items/bullets
 #
 # Created by .
##

execute as @e[type=armor_stand,tag=blood_line] at @s run tp @s ^ ^ ^-1
execute as @e[type=armor_stand,tag=blood_line] at @s run scoreboard players add @s blood_line_livetime 1

execute as @e[type=armor_stand,tag=blood_line] at @s unless block ~ ~ ~ air unless block ~ ~ ~ #carpets run kill @s


execute as @e[type=armor_stand,tag=blood_line] at @s if score @s blood_line_livetime >= MAX blood_line_livetime run playsound entity.ghast.shoot master @a

execute as @e[type=armor_stand,tag=blood_line] at @s if score @s blood_line_livetime >= MAX blood_line_livetime run kill @s

execute as @e[type=armor_stand,tag=blood_line] at @s if score @s blood_line_livetime >= c5 variables if entity @e[distance=..1.7,type=!armor_stand,type=!item_frame,type=!item] run effect give @e[distance=..1.7,type=!armor_stand,type=!item_frame,type=!item] instant_damage 1 0 true 
execute as @e[type=armor_stand,tag=blood_line] at @s if score @s blood_line_livetime >= c5 variables if entity @e[distance=..1.7,type=!armor_stand,type=!item_frame,type=!item] run kill @s

execute as @e[type=armor_stand,tag=blood_line] at @s run particle dust 0.655 0 0 1 ~ ~ ~ 0.01 0.01 0.01 0.01 10
