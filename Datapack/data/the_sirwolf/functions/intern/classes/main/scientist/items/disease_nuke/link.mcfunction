##
 # link.mcfunction
 # intern/classes/main/scientist/items/disease_nuke
 #
 # Created by .
##

scoreboard players add MAX dis_nuke_link 1
scoreboard players operation @s dis_nuke_link = MAX dis_nuke_link

execute as @e[type=armor_stand,tag=dis_nuke] unless score @s dis_nuke_link > c0 dis_nuke_link run scoreboard players operation @s dis_nuke_link = MAX dis_nuke_link

