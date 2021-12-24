##
 # terminal_menue.mcfunction
 # intern/classes/main/hacker/interface
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear

tellraw @s {"text":"Booting up...","color": "green"}

tellraw @s {"text":"Wellcome! What do you want?","bold": true}

tellraw @s {"text": " - Hacks [click]","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/main/hacker/interface/terminal_hacks_menue"}}
tellraw @s {"text": " - Info [click]","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/main/hacker/interface/terminal_info"}}
tellraw @s {"text": " - Exit [click]","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/bin/clear"}}

# list of hacks by hack_en id
# xray : 1
# fly : 2
# mobility : 3
# rewind : 4
