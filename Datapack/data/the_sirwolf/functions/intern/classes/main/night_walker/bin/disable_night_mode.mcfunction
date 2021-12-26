##
 # disable_night_mode.mcfunction
 # intern/classes/main/night_walker/bin
 #
 # Created by .
##

scoreboard players set @s tmp 0

execute if score @s enable_shadow_mode matches 1 run title @s title {"text": ""}
execute if score @s enable_shadow_mode matches 1 run title @s subtitle {"text": "Disabled Shadow-Mode!","color": "dark_gray"}
execute if score @s enable_shadow_mode matches 1 run scoreboard players set @s tmp 1
execute if score @s enable_shadow_mode matches 1 run scoreboard players set @s enable_shadow_mode 0

execute if score @s enable_shadow_mode matches 0 if score @s tmp matches 0 run title @s title {"text": ""}
execute if score @s enable_shadow_mode matches 0 if score @s tmp matches 0 run title @s subtitle {"text": "Enabled Shadow-Mode!","color": "dark_gray"}
execute if score @s enable_shadow_mode matches 0 if score @s tmp matches 0 run scoreboard players set @s enable_shadow_mode 1

scoreboard players reset @s tmp

execute as @a if score @s class_id = NIGHT_WALKER class_id run scoreboard players enable @s toggle_shadow_mode
scoreboard players set @a toggle_shadow_mode 0