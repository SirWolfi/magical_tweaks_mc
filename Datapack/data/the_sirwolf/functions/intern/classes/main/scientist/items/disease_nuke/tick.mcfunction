##
 # tick.mcfunction
 # intern/classes/main/scientist/items/disease_nuke
 #
 # Created by .
##

execute as @e[tag=dis_nuke,type=armor_stand] at @s unless score @s dis_nuke_livetime_max >= c0 variables run scoreboard players operation @s land_mine_livetime_max = NORM land_mine_livetime_max

execute as @e[tag=dis_nuke,type=armor_stand] at @s run execute at @a[distance=..7,limit=1,sort=nearest,scores={class_id=8}] if score @p dis_nuke_link = @s dis_nuke_link unless score @s dis_nuke_livetime_warn < @s dis_nuke_livetime run scoreboard players add @s dis_nuke_livetime 1

execute as @e[tag=dis_nuke,type=armor_stand] at @s if score @s dis_nuke_livetime_warn > @s dis_nuke_livetime run execute at @a if score @p class_id = SCIENTIST class_id if score @p dis_nuke_link = @s dis_nuke_link run title @p actionbar [{"text":"Nuke at: ","color": "green"},{"score":{"name": "@s","objective": "dis_nuke_livetime"}},"/",{"score":{"name":"@s","objective": "dis_nuke_livetime_warn"}}]
execute as @e[tag=dis_nuke,type=armor_stand] if score @s dis_nuke_livetime_warn < @s dis_nuke_livetime run scoreboard players add @s dis_nuke_livetime 1
execute as @e[tag=dis_nuke,type=armor_stand] at @s if score @s dis_nuke_livetime_warn = @s dis_nuke_livetime run execute at @a if score @p class_id = SCIENTIST class_id if score @p dis_nuke_link = @s dis_nuke_link run title @p title {"text":"Nuke overcharging! RUN!","color": "dark_green"}


execute as @e[tag=dis_nuke,type=armor_stand] at @s if score @s dis_nuke_livetime >= @s dis_nuke_livetime_max run function the_sirwolf:intern/classes/main/scientist/items/disease_nuke/explode

execute as @e[tag=dis_nuke,type=armor_stand] at @s run particle dust 0.016 0.165 0.004 1 ~ ~ ~ 4 4 4 0.01 40
execute as @e[tag=dis_nuke,type=armor_stand] at @s run particle dust 0.016 0.165 0.004 1 ~ ~ ~ 1 1 1 0.01 40
execute as @e[tag=dis_nuke,type=armor_stand] at @s run particle dust 0.094 0.094 0.094 1 ~ ~ ~ 1 1 1 0.01 40