##
 # edo_ent_1_att.mcfunction
 # intern/classes/main/night_walker/other/edo_ent
 #
 # Created by .
##

scoreboard players set @s tmp 5
execute if entity @e[distance=..10] unless score @s class_id = NIGHT_WALKER class_id run scoreboard players set @s tmp 0


execute if score @s tmp matches 0 run function the_sirwolf:intern/classes/main/night_walker/other/edo_ent/bullets/homing_bullet

scoreboard players set @s edo_ent_att_cldw 0