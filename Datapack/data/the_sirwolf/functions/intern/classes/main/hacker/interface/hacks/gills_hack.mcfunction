##
 # gills_hack.mcfunction
 # intern/classes/main/hacker/interface/hacks
 #
 # Created by .
##

execute as @a[scores={hack_en=4}] at @s if score @s class_id = HACKER class_id anchored eyes if block ~ ~ ~ air run effect give @s poison 1 1 true

execute as @a[scores={hack_en=4}] at @s if score @s class_id = HACKER class_id anchored eyes if block ~ ~ ~ water run effect give @s water_breathing 1 1 true
execute as @a[scores={hack_en=4}] at @s if score @s class_id = HACKER class_id anchored eyes if block ~ ~ ~ water run effect give @s dolphins_grace 1 1 true
