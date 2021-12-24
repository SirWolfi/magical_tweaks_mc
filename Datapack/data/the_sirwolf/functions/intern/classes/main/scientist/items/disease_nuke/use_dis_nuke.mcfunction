##
 # use_dis_nuke.mcfunction
 # intern/classes/main/scientist/items/disease_nuke
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if score @s dis_nuke_link > c0 variables run scoreboard players set tmp variables 3

execute unless score @s class_id = SCIENTIST class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run function the_sirwolf:intern/classes/main/scientist/items/disease_nuke/set

execute if score tmp variables matches 3 run title @s title {"text": "","color": ""}
execute if score tmp variables matches 3 run title @s subtitle {"text": "You can only place one nuke at once","color": "red"}

scoreboard players set tmp variables 0