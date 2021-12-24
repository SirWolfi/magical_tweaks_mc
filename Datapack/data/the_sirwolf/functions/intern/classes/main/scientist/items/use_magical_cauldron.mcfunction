##
 # use_magical_cauldron.mcfunction
 # intern/classes/main/scientist/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute unless data entity @s[type=player] {Inventory:[{id:"minecraft:wheat_seeds",tag:{EntityTag:{Tags:["chemicals"]}}}]} run scoreboard players set tmp variables 1

execute unless score @s mag_caul_cldw >= @s mag_caul_cldw_max run scoreboard players set tmp variables 3

execute unless score @s class_id = SCIENTIST class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run playsound entity.arrow.hit_player master @a
execute if score tmp variables matches 0 run particle dust 0.306 0.886 0.078 1 ~ ~ ~ 1 1 1 0.01 20

execute if score tmp variables matches 0 run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/summon_random_potion

execute if score tmp variables matches 0 run scoreboard players set @s mag_caul_cldw 0

execute if score tmp variables matches 0 run clear @s wheat_seeds{EntityTag:{Tags:["chemicals"]}} 1

execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["mag_caul"]}} 1

execute if score tmp variables matches 1 run title @s title {"text": "","color": ""}
execute if score tmp variables matches 1 run title @s subtitle {"text": "You don't have enough chemicals!","color": "red"}

scoreboard players set tmp variables 0