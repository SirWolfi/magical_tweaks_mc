##
 # use_staff_of_healing.mcfunction
 # intern/classes/main/medic/items
 #
 # Created by .
##

scoreboard players set tmp variables 0

execute if data entity @s[type=player] {foodLevel:0} run scoreboard players set tmp variables 1

execute if score @s staff_oh_cldw < MAX_cldw staff_oh_cldw run scoreboard players set tmp variables 3

execute unless score @s class_id = MEDIC class_id run scoreboard players set tmp variables 2

execute if score tmp variables matches 0 run effect give @s hunger 2 10 true
execute if score tmp variables matches 0 run particle heart ~ ~ ~ 5 0.4 5 0.05 40
execute if score tmp variables matches 0 run effect give @a[distance=0.5..5] regeneration 2 2 true

execute if score tmp variables matches 0 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["pacifi"]}}}]}] run effect give @s regeneration 2 2 true

execute if score tmp variables matches 0 run playsound entity.arrow.hit_player master @a

execute if score tmp variables matches 0 run scoreboard players set @s staff_oh_cldw 0

#execute if score tmp variables matches 2 run clear @s carrot_on_a_stick{EntityTag:{Tags:["staff_oh"]}} 1
execute if score tmp variables matches 2 run function the_sirwolf:intern/bin/not_for_your_class_error

scoreboard players set tmp variables 0