##
 # use_staff_of_clearence.mcfunction
 # intern/classes/main/medic/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute if score @s staff_oc_cldw < MAX_cldw_m1 staff_oc_cldw run scoreboard players set tmp variables 3

execute unless score @s class_id = MEDIC class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 3 60 true
execute if score tmp variables matches 0 run particle dust 1 1 1 1 ~ ~ ~ 4 0.4 4 0.01 60
execute if score tmp variables matches 0 run execute as @e[distance=1..7] at @s run function the_sirwolf:intern/bin/clear_bad_effects
execute if score tmp variables matches 0 run scoreboard players set @s staff_oc_cldw 0

execute if score tmp variables matches 0 run playsound block.lava.extinguish master @a

#execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["staff_oc"]}} 1
execute if score tmp variables matches 2 run function the_sirwolf:intern/bin/not_for_your_class_error

scoreboard players set tmp variables 0

