##
 # mage.mcfunction
 # intern/bin/join_dialog
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear

tellraw @s {"text":"","color":"green"}
tellraw @s {"text":"---- Mage Class ----","bold":true}
tellraw @s {"text":"Magical, Ranged, Area","color":"green"}
tellraw @s {"text":"And old mage who can use magical wands and spells","color":"green"}
tellraw @s {"text":"[Join]","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/join/mage"}}
tellraw @s {"text":"[Back]","bold":true,"color":"red","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_hand"}}
