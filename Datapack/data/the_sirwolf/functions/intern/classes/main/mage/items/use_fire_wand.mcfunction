##
 # use_fire_wand.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute unless score @s fire_cldw >= MAX_cldw fire_cldw run scoreboard players set tmp variables 3

execute unless score @s class_id = MAGE class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 50 true
execute if score tmp variables matches 0 run particle flame ~ ~ ~ 5 0 5 0.04 20
execute if score tmp variables matches 0 run particle flame ~ ~ ~ 0 1 0 0.01 10
execute if score tmp variables matches 0 run function the_sirwolf:intern/classes/main/mage/items/bullets/fire_ball

execute if score tmp variables matches 0 run fill ~4 ~2 ~4 ~-4 ~-2 ~-4 air replace snow
execute if score tmp variables matches 0 run fill ~4 ~2 ~4 ~-4 ~-2 ~-4 air replace ice
execute if score tmp variables matches 0 run fill ~4 ~2 ~4 ~-4 ~-2 ~-4 air replace blue_ice

execute if score tmp variables matches 0 run playsound minecraft:block.fire.extinguish master @a

execute if score tmp variables matches 0 run scoreboard players set @s fire_cldw 0

#execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["fire_wand"]}} 1
execute if score tmp variables matches 2 run function the_sirwolf:intern/bin/not_for_your_class_error

scoreboard players set tmp variables 0
