##
 # tick.mcfunction
 # intern/classes/main/hacker/items/psy_hack
 #
 # Created by .
##

execute as @a at @s if score @s class_id = HACKER class_id if score @s psyh_tp_hand matches 0 run scoreboard players add @s psy_hack_cldw 1
execute as @a at @s if score @s class_id = HACKER class_id if score @s psyh_tp_hand matches 0 if score @s psy_hack_cldw >= MAX_cldw psy_hack_cldw run scoreboard players operation @s psy_hack_cldw = MAX_cldw psy_hack_cldw

execute as @a at @s if score @s class_id = HACKER class_id unless score @s psyh_tp_hand matches 0 run scoreboard players add @s psy_hack_en_time 1
execute as @a at @s if score @s class_id = HACKER class_id unless score @s psyh_tp_hand matches 0 if score @s psy_hack_en_time >= MAX psy_hack_en_time run scoreboard players operation @s psy_hack_en_time = MAX psy_hack_en_time

execute as @a if score @s class_id = HACKER class_id if score @s psyh_tp_hand_pl > c0 variables if score @s psyh_tp_hand > c0 variables run scoreboard players set @s tmp 1

execute as @a unless score @s tmp matches 1 if score @s psyh_tp_hand_pl > c0 variables if score @s psyh_tp_hand matches 0 at @s if score @s psyh_tp_hand_pl = @a[scores={tmp=1},limit=1,gamemode=spectator] psyh_tp_hand_pl run tp @a[scores={tmp=1},gamemode=spectator] ~ ~ ~ facing ^ ^ ^1

execute as @a at @s if score @s class_id = HACKER class_id unless score @s psyh_tp_hand matches 0 if score @s psy_hack_en_time >= MAX psy_hack_en_time run function the_sirwolf:intern/classes/main/hacker/items/psy_hack/tp_back
