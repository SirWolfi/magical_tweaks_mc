##
 # tick.mcfunction
 # intern/classes/main/hacker/items/lazer
 #
 # Created by .
##

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["lazer"]}}}}] if score @s class_id = HACKER class_id run scoreboard players add @s lazer_cldw 1
execute as @a if score @s class_id = HACKER class_id if score @s lazer_cldw > MAX_cldw lazer_cldw run scoreboard players operation @s lazer_cldw = MAX_cldw lazer_cldw


execute as @a at @s if score @s class_id = HACKER class_id if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["lazer"]}}}} if score @s lazer_aim_link matches 0 if score @s lazer_cldw >= MAX_cldw lazer_cldw run function the_sirwolf:intern/classes/main/hacker/items/lazer/lazer_aim

execute as @a at @s if score @s class_id = HACKER class_id unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["lazer"]}}}} run execute at @e[type=armor_stand,tag=lazer_arm,tag=!unlinked] if score @s lazer_aim_link = @e[type=armor_stand,limit=1,sort=nearest,tag=lazer_arm,tag=!unlinked] lazer_aim_link run function the_sirwolf:intern/classes/main/hacker/items/lazer/kill_lazer_aim
execute as @a at @s if score @s class_id = HACKER class_id if score @s lazer_cldw < MAX lazer_cldw run execute at @e[type=armor_stand,tag=lazer_arm,tag=!unlinked] if score @s lazer_aim_link = @e[type=armor_stand,limit=1,sort=nearest,tag=lazer_arm,tag=!unlinked] lazer_aim_link run function the_sirwolf:intern/classes/main/hacker/items/lazer/kill_lazer_aim

execute as @e[type=armor_stand,tag=lazer_arm,tag=!unlinked] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/check_lazer_aim_pos

execute as @e[type=armor_stand,tag=lazer_arm,tag=!unlinked] at @s if score @s lazer_aim_link matches 0 run kill @s
execute as @e[type=armor_stand,tag=lazer_arm,tag=!unlinked] at @s run particle dust 0 0.549 1 1 ~ ~ ~ 0.2 0 0.2 0.01 5

execute as @e[type=armor_stand,tag=lazer_arm,tag=unlinked] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.2 0 0.2 0.01 5

execute as @e[type=armor_stand,tag=lazer_b] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/move_lazer
execute as @e[type=armor_stand,tag=lazer_b] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/move_lazer
execute as @e[type=armor_stand,tag=lazer_b] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/move_lazer
execute as @e[type=armor_stand,tag=lazer_b] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/move_lazer
execute as @e[type=armor_stand,tag=lazer_b] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/move_lazer
execute as @e[type=armor_stand,tag=lazer_b] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/move_lazer
execute as @e[type=armor_stand,tag=lazer_b] at @s run function the_sirwolf:intern/classes/main/hacker/items/lazer/move_lazer
execute as @e[type=armor_stand,tag=lazer_b] at @s run particle soul_fire_flame ~ ~ ~ 0.6 1 0.6 0.01 40

execute as @a if score @s class_id = MAGE class_id unless score @s lazer_aim_link matches 0 run scoreboard players set @s lazer_aim_link 0

execute as @e[type=armor_stand,tag=lazer_arm,tag=unlinked] run scoreboard players add @s lazer_s_cldw 1
execute as @e[type=armor_stand,tag=lazer_arm,tag=unlinked] if score @s lazer_s_cldw >= MAX_cldw lazer_s_cldw run scoreboard players operation @s lazer_s_cldw = MAX lazer_s_cldw

execute as @e[type=armor_stand,tag=lazer_arm,tag=unlinked] run scoreboard players add @s lazer_s_cldw 1
execute as @e[type=armor_stand,tag=lazer_arm,tag=unlinked] at @s if score @s lazer_s_cldw >= MAX_cldw lazer_s_cldw run function the_sirwolf:intern/classes/main/hacker/items/lazer/summon_lazer
execute as @e[type=armor_stand,tag=lazer_arm,tag=unlinked] if score @s lazer_s_cldw >= MAX_cldw lazer_s_cldw run kill @s