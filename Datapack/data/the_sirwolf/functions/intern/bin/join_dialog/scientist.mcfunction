##
 # scientist.mcfunction
 # intern/bin/join_dialog
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear

tellraw @s {"text":"","color":"green"}
tellraw @s {"text":"---- Scientist ----","bold":true}
tellraw @s {"text":"Special, Support","color":"green"}
tellraw @s {"text":"A crazed man who loves when things blow up. Always searching for more test subjects","color":"green"}
tellraw @s {"text":"[Join]","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/join/scientist"}}
tellraw @s {"text":"[Back]","bold":true,"color":"red","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_hand"}}

