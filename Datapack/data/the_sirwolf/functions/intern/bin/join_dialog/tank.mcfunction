##
 # tank.mcfunction
 # intern/bin/join_dialog
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear

tellraw @s {"text":"","color":"green"}
tellraw @s {"text":"---- Paladin ----","bold":true}
tellraw @s {"text":"Tank, Melee","color":"green"}
tellraw @s {"text":"A holy knight with the mission to protect his team","color":"green"}
tellraw @s {"text":"[Join]","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/join/tank"}}
tellraw @s {"text":"[Back]","bold":true,"color":"red","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_hand"}}

