##
 # hacker.mcfunction
 # intern/bin/join_dialog
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear

tellraw @s {"text":"","color":"green"}
tellraw @s {"text":"---- Hacker Class ----","bold":true}
tellraw @s {"text":"Self Buffing, Special","color":"green"}
tellraw @s {"text":"A time traveler who uses modern technoligy and his hacking skills to win battles","color":"green"}
tellraw @s {"text":"[Join]","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/join/hacker"}}
tellraw @s {"text":"[Back]","bold":true,"color":"red","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_hand"}}
