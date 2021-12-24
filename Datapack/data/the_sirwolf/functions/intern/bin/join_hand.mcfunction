##
 # join_hand.mcfunction
 # intern/bin
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear
tellraw @s {"text":"","bold":true}
tellraw @s {"text":"---- Class Join Menu ----","bold":true}
tellraw @s {"text":"- Mage","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_dialog/mage"}}
tellraw @s {"text":"- Night Walker","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_dialog/night_walker"}}
tellraw @s {"text":"- Paladin","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_dialog/tank"}}
tellraw @s {"text":"- Medic","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_dialog/medic"}}
tellraw @s {"text":"- Hacker","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_dialog/hacker"}}
tellraw @s {"text":"- Scientist","bold":true,"color":"green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/join_dialog/scientist"}}

tellraw @s {"text": ""}
tellraw @s {"text":" [Leave All] ","bold":true,"color":"red","clickEvent": {"action": "run_command","value": "/scoreboard players operation @s class_id = NO_CLASS class_id"}}


scoreboard players set @a join 0
scoreboard players enable @a join
