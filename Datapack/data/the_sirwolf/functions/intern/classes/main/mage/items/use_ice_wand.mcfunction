##
 # use_ice_wand.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if score @s ice_cldw < MAX_cldw_m1 ice_cldw run scoreboard players set tmp variables 3

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute unless score @s class_id = MAGE class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 80 true
execute if score tmp variables matches 0 run particle falling_water ~ ~ ~ 2 0 2 1 10

execute if score tmp variables matches 0 run fill ~10 ~2 ~10 ~10 ~ ~10 blue_ice keep
execute if score tmp variables matches 0 run fill ~ ~2 ~10 ~ ~ ~10 blue_ice keep
execute if score tmp variables matches 0 run fill ~10 ~2 ~ ~10 ~ ~ blue_ice keep

execute if score tmp variables matches 0 run fill ~-10 ~2 ~10 ~-10 ~ ~10 blue_ice keep
execute if score tmp variables matches 0 run fill ~-10 ~2 ~-10 ~-10 ~ ~-10 blue_ice keep
execute if score tmp variables matches 0 run fill ~ ~2 ~-10 ~ ~ ~-10 blue_ice keep
execute if score tmp variables matches 0 run fill ~-10 ~2 ~ ~-10 ~ ~ blue_ice keep

execute if score tmp variables matches 0 run fill ^-2 ^ ^2 ^2 ^3 ^2 blue_ice keep

execute if score tmp variables matches 0 run fill ~10 ~ ~10 ~-10 ~ ~-10 snow keep 

execute if score tmp variables matches 0 run fill ~4 ~2 ~4 ~-4 ~-3 ~-4 ice replace water


execute if score tmp variables matches 0 run effect give @e[distance=1..5] slowness 10 2

execute if score tmp variables matches 0 run scoreboard players set @s ice_cldw 0

#execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["ice_wand"]}} 1
execute if score tmp variables matches 2 run function the_sirwolf:intern/bin/not_for_your_class_error

scoreboard players set tmp variables 0

