##
 # fly_hack.mcfunction
 # intern/classes/main/hacker/interface/hacks
 #
 # Created by .
##
scoreboard players add @a[scores={class_id=1,hack_en=2}] fly_puffer 1
execute as @a[scores={class_id=1,hack_en=2}] if score @s fly_puffer > MAX_puff fly_puffer run scoreboard players operation @s fly_puffer = MAX_puff fly_puffer
execute as @a[scores={class_id=1,hack_en=2,was_inactive=0}] at @s run scoreboard players set @s fly_puffer 0

execute as @a[scores={class_id=1,hack_en=2,sneak=0}] at @s if score @s fly_puffer >= MAX_puff fly_puffer run effect give @s levitation 1 1 true
execute as @a[scores={class_id=1,hack_en=2,sneak=1}] at @s run effect clear @s levitation

