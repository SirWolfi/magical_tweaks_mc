##
 # tp_back.mcfunction
 # intern/classes/main/hacker/items/psy_hack
 #
 # Created by .
##


scoreboard players reset @a tmp
scoreboard players set @s tmp 1
execute as @a[distance=..1] if score @s psyh_tp_hand_pl = @p[scores={tmp=1}] psyh_tp_hand_pl run scoreboard players set @s psyh_tp_hand_pl 0
execute as @e[tag=psyh_arm] at @s if score @s psyh_tp_hand = @a[scores={tmp=1},limit=1] psyh_tp_hand run tp @a[scores={tmp=1},limit=1] ~ ~ ~
execute as @e[tag=psyh_arm] at @s if score @s psyh_tp_hand = @a[scores={tmp=1},limit=1] psyh_tp_hand run kill @e[type=armor_stand,tag=psyh_arm,distance=..0.3]
scoreboard players set @s psyh_tp_hand 0
scoreboard players set @s psyh_tp_hand_pl 0
scoreboard players set @s psy_hack_en_time 0
scoreboard players reset @a tmp

scoreboard players operation @s hack_en = @s psy_hack_l_hack
scoreboard players set @s psy_hack_l_hack 0
gamemode survival