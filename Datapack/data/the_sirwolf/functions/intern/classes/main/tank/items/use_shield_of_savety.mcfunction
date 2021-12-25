##
 # use_shield_of_savety.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if score tick variables >= c5 variables run scoreboard players set tmp variables 3

execute unless score @s class_id = TANK class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s slowness 3 3 true
execute if score tmp variables matches 0 run effect give @s jump_boost 3 250 true
execute if score tmp variables matches 0 run effect give @s resistance 3 4 true

#execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["sh_os"]}} 1
execute if score tmp variables matches 2 run function the_sirwolf:intern/bin/not_for_your_class_error

scoreboard players set tmp variables 0
