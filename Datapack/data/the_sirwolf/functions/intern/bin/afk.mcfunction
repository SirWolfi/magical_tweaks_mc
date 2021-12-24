##
 # afk.mcfunction
 # intern/bin
 #
 # Created by .
##

execute as @a[scores={was_inactive=0}] run scoreboard players set @s afk_cldw 0
execute as @a at @s if block ~ ~-3 ~ air run scoreboard players set @s afk_cldw 0

execute as @a[scores={afk=1..}] if score @s afk_cldw < MAX_cldw afk_cldw run tellraw @s [{"text":"You cant go afk now, you have to wait until the coldown is ready. You can't go afk while in the air!","bold":true},"  ",{"score":{"name":"@s","objective":"afk_cldw"}},"/300"]

execute as @a[tag=afk,scores={afk=1..}] run me is no longer afk!
execute as @a[tag=afk,scores={afk=1..}] run scoreboard players set @s afk_cldw 0
execute as @a[tag=afk,scores={afk=1..}] run tag @s remove afk

execute as @a[scores={afk=1..}] if score @s afk_cldw >= MAX_cldw afk_cldw run tag @s add afk

execute as @a[tag=afk] at @s run effect give @s resistance 2 250 true

execute as @a[tag=afk] at @s run tp @s @e[tag=afk_stand,distance=0.3..,sort=nearest,limit=1]

execute as @a[scores={afk=1..},tag=afk] run me is now afk!
execute as @a[scores={afk=1..},tag=afk] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["afk_stand"],NoGravity:1b}
execute as @a[scores={afk=1..}] run scoreboard players enable @s afk
execute as @a[scores={afk=1..}] run scoreboard players set @s afk 0

execute as @a[tag=afk] run scoreboard players set @s usedWeapon 0

execute as @e[type=armor_stand,tag=afk_stand] at @s run scoreboard players set @s tmp 0
execute as @e[type=armor_stand,tag=afk_stand] at @s if entity @a[tag=afk,distance=..2] run scoreboard players set @s tmp 1
execute as @e[type=armor_stand,tag=afk_stand] at @s if score @s tmp matches 0 run kill @s
execute as @e[type=armor_stand,tag=afk_stand] at @s run scoreboard players reset @s tmp

