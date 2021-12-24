##
 # use_normal_shuricen.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##


scoreboard players set tmp variables 0

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute unless score @s class_id = NIGHT_WALKER class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run particle falling_dust coal_block ~ ~ ~ 0.4 0.4 0.4 0.01 20

execute if score tmp variables matches 0 run playsound entity.ghast.shoot master @a

execute if score tmp variables matches 0 run summon armor_stand ^ ^ ^ {Invisible:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:24}}],Invulnerable:1b,NoGravity:1b,Tags:["shurc_ent","unset"]}
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=shurc_ent] run tp @s ^-0.3 ^ ^2 facing entity @a[scores={class_id=7},sort=nearest,limit=1]
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=shurc_ent] run tp @s ^ ^2 ^
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=shurc_ent] run tag @s remove unset

execute if score tmp variables matches 0 run summon armor_stand ^ ^ ^ {Invisible:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:24}}],Invulnerable:1b,NoGravity:1b,Tags:["shurc_ent","unset"]}
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=shurc_ent] run tp @s ^0.3 ^ ^2 facing entity @a[scores={class_id=7},sort=nearest,limit=1]
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=shurc_ent] run tp @s ^ ^2 ^
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=shurc_ent] run tag @s remove unset

execute if score tmp variables matches 0 run scoreboard players set @s throw_s_cldw 0
execute if score tmp variables matches 0 run scoreboard players set @s blood_cldw 0

execute if entity @s[gamemode=!creative] run execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

scoreboard players set tmp variables 0