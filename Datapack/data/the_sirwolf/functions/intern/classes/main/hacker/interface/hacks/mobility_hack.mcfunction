##
 # mobility_hack.mcfunction
 # intern/classes/main/hacker/interface/hacks
 #
 # Created by .
##

execute as @a[scores={hack_en=3}] if score @s class_id = HACKER class_id run effect give @s speed 1 1 true
execute as @a[scores={hack_en=3}] if score @s class_id = HACKER class_id run effect give @s jump_boost 1 0 true
execute as @a[scores={hack_en=3}] if score @s class_id = HACKER class_id at @s anchored feet run particle spit ~ ~ ~ 0.2 0 0.2 0.001 2

