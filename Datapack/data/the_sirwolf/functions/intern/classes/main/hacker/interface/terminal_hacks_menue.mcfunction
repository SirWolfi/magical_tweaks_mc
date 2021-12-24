##
 # terminal_hacks_menue.mcfunction
 # intern/classes/main/hacker/interface
 #
 # Created by .
##

function the_sirwolf:intern/bin/clear


tellraw @s {"text": "--- Free(tm) Hacks ---","color": "green","bold": true}
tellraw @s {"text": "Click on the hacks to enable them (only one at a time)","bold": true}
execute if score @s term_en_fly matches 0 run tellraw @s {"text": "- [Fly Hack] -","strikethrough": true,"color": "dark_red"}
execute if score @s term_en_fly matches 1 run tellraw @s {"text": "- [Fly Hack] -","clickEvent": {"action": "run_command","value": "/scoreboard players set @s hack_en 2"}}

execute if score @s term_en_mov matches 0 run tellraw @s {"text": "- [Mobility Hack] -","strikethrough": true,"color": "dark_red"}
execute if score @s term_en_mov matches 1 run tellraw @s {"text": "- [Mobility Hack] -","clickEvent": {"action": "run_command","value": "/scoreboard players set @s hack_en 3"}}

execute if score @s term_en_xray matches 0 run tellraw @s {"text": "- [X-Ray Hack] -","strikethrough": true,"color": "dark_red"}
execute if score @s term_en_xray matches 1 run tellraw @s {"text": "- [X-Ray Hack] -","clickEvent": {"action": "run_command","value": "/scoreboard players set @s hack_en 1"}}

execute if score @s term_en_g matches 0 run tellraw @s {"text": "- [Gills Hack] -","strikethrough": true,"color": "dark_red"}
execute if score @s term_en_g matches 1 run tellraw @s {"text": "- [Gills Hack] -","clickEvent": {"action": "run_command","value": "/scoreboard players set @s hack_en 4"}}

tellraw @s {"text": "- [Disable Hack] -","clickEvent": {"action": "run_command","value": "/scoreboard players set @s hack_en 0"}}
tellraw @s {"text": ""}



#"clickEvent": {"action": "run_command","value": "/function the_sirwolf:intern/classes/main/hacker/interface/terminal_hacks_menue"}
