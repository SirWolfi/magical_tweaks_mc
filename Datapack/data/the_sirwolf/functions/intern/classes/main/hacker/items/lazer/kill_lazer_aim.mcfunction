##
 # kill_lazer_aim.mcfunction
 # intern/classes/main/hacker/items/lazer
 #
 # Created by .
##

kill @e[type=armor_stand,limit=1,sort=nearest,tag=lazer_arm,tag=!unlinked]
scoreboard players set @s lazer_aim_link 0