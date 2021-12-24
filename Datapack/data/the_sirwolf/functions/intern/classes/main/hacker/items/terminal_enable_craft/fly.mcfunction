##
 # fly.mcfunction
 # intern/classes/main/hacker/items/terminal_enable_craft
 #
 # Created by .
##

function the_sirwolf:intern/classes/main/hacker/items/terminal

execute as @p if score @s class_id = HACKER class_id run scoreboard players set @s term_en_fly 1
execute as @p if score @s class_id = HACKER class_id run title @s actionbar {"text": "Unlocked \"Fly Hack\"","color": "dark_green"}