##
 # unlink.mcfunction
 # intern/classes/main/hacker/items/lazer
 #
 # Created by .
##

execute at @e[type=armor_stand,tag=lazer_arm,tag=!unlinked] if score @e[limit=1,sort=nearest,type=armor_stand,tag=lazer_arm,tag=!unlinked] lazer_aim_link = @s lazer_aim_link run scoreboard players set @e[limit=1,sort=nearest,type=armor_stand,tag=lazer_arm,tag=!unlinked] lazer_aim_link 0
execute at @e[type=armor_stand,tag=lazer_arm,tag=!unlinked] if score @e[limit=1,sort=nearest,type=armor_stand,tag=lazer_arm,tag=!unlinked] lazer_aim_link matches 0 run tag @e[limit=1,sort=nearest,type=armor_stand,tag=lazer_arm,tag=!unlinked] add unlinked

scoreboard players set @s lazer_aim_link 0
scoreboard players set @s lazer_cldw 0

