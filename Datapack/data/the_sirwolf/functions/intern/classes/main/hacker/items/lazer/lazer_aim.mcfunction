##
 # lazer_aim.mcfunction
 # intern/classes/main/hacker/items/lazer
 #
 # Created by .
##

scoreboard players add MAX lazer_aim_link 1
scoreboard players operation @s lazer_aim_link = MAX lazer_aim_link
summon armor_stand ~ ~ ~ {Tags:["lazer_arm"],Invisible:1b,NoGravity:1b,Invulnerable:1b}
scoreboard players operation @e[limit=1,sort=nearest,tag=lazer_arm,type=armor_stand] lazer_aim_link = @s lazer_aim_link


