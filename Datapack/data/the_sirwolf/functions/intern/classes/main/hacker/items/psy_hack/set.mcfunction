##
 # set.mcfunction
 # intern/classes/main/hacker/items/psy_hack
 #
 # Created by .
##

# psyh_tp_hand

scoreboard players add MAX psyh_tp_hand 1
scoreboard players operation @s psyh_tp_hand = MAX psyh_tp_hand
summon armor_stand ~ ~ ~ {Tags:["psyh_arm","unset"],Invisible:1b,Invulnerable:1b,NoGravity:1b}
scoreboard players operation @e[type=armor_stand,tag=psyh_arm,tag=unset,distance=..0.2] psyh_tp_hand = @s psyh_tp_hand
execute as @e[type=armor_stand,tag=psyh_arm,tag=unset,distance=..0.2] run tag @s remove unset

scoreboard players add MAX psyh_tp_hand_pl 1
scoreboard players operation @s psyh_tp_hand_pl = MAX psyh_tp_hand_pl
scoreboard players set @a tmp 0
scoreboard players set @s tmp 1
execute at @p[scores={tmp=0,psyh_tp_hand_pl=0}] run scoreboard players operation @p[scores={tmp=0,psyh_tp_hand_pl=0}] psyh_tp_hand_pl = @s psyh_tp_hand_pl
scoreboard players reset @s tmp

scoreboard players operation @s psy_hack_l_hack = @s hack_en
scoreboard players set @s hack_en 0

gamemode spectator

