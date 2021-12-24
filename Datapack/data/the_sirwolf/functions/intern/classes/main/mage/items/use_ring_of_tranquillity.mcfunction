##
 # ring_of_tranquillity.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute unless score @s ring_o_tran_cldw >= MAX_cldw ring_o_tran_cldw run scoreboard players set tmp variables 3

execute unless score @s class_id = MAGE class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s saturation 10 2 true
execute if score tmp variables matches 0 run effect give @s slowness 10 250 true
execute if score tmp variables matches 0 run effect give @s jump_boost 10 250 true
execute if score tmp variables matches 0 run particle happy_villager ~ ~ ~ 0.1 1 0.1 0.01 10

execute if score tmp variables matches 0 run playsound minecraft:block.beacon.deactivate master @a

execute if score tmp variables matches 0 run scoreboard players set @s ring_o_tran_cldw 0

execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["ring_o_tran_cldw"]}} 1

scoreboard players set tmp variables 0

