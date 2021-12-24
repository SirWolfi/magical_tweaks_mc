##
 # night_walker.mcfunction
 # intern/bin/join_dialog
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear

tellraw @s {"text":"","color":"green"}
tellraw @s {"text":"---- Night Walker ----","bold":true}
tellraw @s {"text":"Magical, Special, Melee","color":"green"}
tellraw @s {"text":"A Ninja from far away. Loves his bleeding inflicting blade","color":"green"}
tellraw @s {"text":"[Join]","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/join/night_walker"}}
tellraw @s {"text":"[Back]","bold":true,"color":"red","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_hand"}}

