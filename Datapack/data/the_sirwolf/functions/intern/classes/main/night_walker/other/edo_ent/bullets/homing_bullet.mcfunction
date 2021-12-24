##
 # homing_bullet.mcfunction
 # intern/classes/main/night_walker/other/edo_ent/bullets
 #
 # Created by .
##

summon armor_stand ^ ^ ^ {Invisible:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:211}}],Invulnerable:1b,NoGravity:1b,Tags:["edo_ent_1_hbull","unset"]}
execute as @e[type=armor_stand,tag=unset,tag=edo_ent_1_hbull] run tp @s ^0.3 ^ ^2 facing entity @a[scores={class_id=7},sort=nearest,limit=1,tag=edo_ent]
execute as @e[type=armor_stand,tag=unset,tag=edo_ent_1_hbull] run tp @s ^ ^2 ^
execute as @e[type=armor_stand,tag=unset,tag=edo_ent_1_hbull] run tag @s remove unset