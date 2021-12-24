##
 # xray_hack.mcfunction
 # intern/classes/main/hacker/interface/hacks
 #
 # Created by .
##

execute as @a[scores={class_id=1,hack_en=1}] at @s run effect give @e[type=!player,type=!#arrows,type=!#impact_projectiles,type=!armor_stand,type=!item_frame,distance=..40] glowing 1 1 true
execute as @a[scores={class_id=1,hack_en=1}] at @s run effect give @s night_vision 10 1 true

