##
 # medic.mcfunction
 # intern/bin/join_dialog
 #
 # Created by .
##


function the_sirwolf:intern/bin/clear

tellraw @s {"text":"","color":"green"}
tellraw @s {"text":"---- Medic ----","bold":true}
tellraw @s {"text":"Magical, Support, Area","color":"green"}
tellraw @s {"text":"\"Is my team still living?! And if yes, where are they???\" - medic","color":"green"}
tellraw @s {"text":"[Join]","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/join/medic"}}
tellraw @s {"text":"[Back]","bold":true,"color":"red","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_hand"}}
