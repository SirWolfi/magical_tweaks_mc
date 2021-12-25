##
 # use_shuricen.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

##
 # use_fire_wand.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute if score @s throw_s_cldw < MAX_cldw_m1 throw_s_cldw run scoreboard players set tmp variables 3

execute unless score @s class_id = NIGHT_WALKER class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 50 true
execute if score tmp variables matches 0 run particle falling_dust coal_block ~ ~ ~ 0.4 0.4 0.4 0.01 20

execute if score tmp variables matches 0 run playsound entity.ghast.hurt master @a
execute if score tmp variables matches 0 run summon armor_stand ^ ^ ^ {Invisible:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:23}}],Invulnerable:1b,NoGravity:1b,Tags:["night_sh_ent","unset"]}
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=night_sh_ent] run tp @s ^ ^ ^2 facing entity @a[scores={class_id=7},sort=nearest,limit=1]
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=night_sh_ent] run tp @s ^ ^2 ^
execute if score tmp variables matches 0 run execute as @e[type=armor_stand,tag=unset,tag=night_sh_ent] run tag @s remove unset

execute if score tmp variables matches 0 run scoreboard players set @s throw_s_cldw 0
execute if score tmp variables matches 0 run scoreboard players set @s blood_cldw 0

#execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["night_sh"]}} 1
execute if score tmp variables matches 2 run function the_sirwolf:intern/bin/not_for_your_class_error

scoreboard players set tmp variables 0

