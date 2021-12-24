##
 # use_edotansai.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

scoreboard players set tmp variables 5

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute if score @s edo_cldw < MAX_cldw_m1 edo_cldw run scoreboard players set tmp variables 3

execute if score tmp variables matches 0 as @e[type=item,nbt={Item:{Count:20b,id:"minecraft:wheat_seeds",tag:{EntityTag:{Tags:["bio_probe"]}}}},distance=..1,limit=1,sort=nearest] at @s if entity @e[type=item,nbt={Item:{Count:10b,id:"minecraft:redstone",tag:{EntityTag:{Tags:["blood"]}}}},distance=..1,limit=1,sort=nearest] run scoreboard players set tmp variables 0

execute if score tmp variables matches 0 run scoreboard players set tmp variables 6
execute if block ^ ^ ^5 air if block ^ ^1 ^5 air run scoreboard players set tmp variables 0

execute unless score @s class_id = NIGHT_WALKER class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 250 true

execute if score tmp variables matches 0 run summon armor_stand ^ ^ ^5 {Invisible:1b,HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:23}}],Invulnerable:1b,NoGravity:1b,Tags:["edo_tomb"],OnGround:1b}

execute if score tmp variables matches 0 run particle falling_dust coal_block ~ ~ ~ 0.4 0.4 0.4 0.01 20

execute if score tmp variables matches 0 run playsound entity.ghast.hurt master @a

execute if score tmp variables matches 0 run scoreboard players set @s edo_cldw 0
execute if score tmp variables matches 0 run scoreboard players set @s blood_cldw 0

execute if score tmp variables matches 0 run kill @e[type=item,distance=..2]

execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["edotensai"]}} 1

scoreboard players set tmp variables 0
