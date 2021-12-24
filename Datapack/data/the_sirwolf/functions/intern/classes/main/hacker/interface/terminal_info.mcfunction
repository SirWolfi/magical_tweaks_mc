##
 # terminal_info.mcfunction
 # intern/classes/main/hacker/interface
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear

tellraw @s {"text": "--- Info ---","bold": true,"color": "green"}
tellraw @s {"text": "Here you can enable certain hacks. For Free(tm)!"}
tellraw @s {"text": "Just click in the menu to \"Hacks\" and choose one!. For Free(tm)!"}
tellraw @s {"text": "Seriously, it's Free(tm)!"}
tellraw @s {"text": ""}
tellraw @s {"text": "[Hacks]","color": "green","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/main/hacker/interface/terminal_hacks_menue"}}
tellraw @s {"text": "[Go Back]","color": "red","clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/main/hacker/interface/terminal_menue"}}

